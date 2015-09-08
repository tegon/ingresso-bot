module SessionHelper
  def store_command_in_session(message)
    @last_command = session[message.from.id][:last_command] if session[message.from.id]
    session[message.from.id] = { last_command: message.text } if is_command?(message.text)
  end
end