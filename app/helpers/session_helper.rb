module SessionHelper
  def store_command_in_session(message)
    p 'store_command_in_session', message.text
    p 'is_command', is_command?(message.text)
    @last_command = @session.get(message.from.id)[:last_command] if @session.get(message.from.id)
    @session.set(message.from.id, { last_command: message.text }) if is_command?(message.text)
  end
end