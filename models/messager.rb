class Messager
  attr_reader :client

  ACCOUNT_SID = ENV['TWILIO_SID']
  AUTH_TOKEN = ENV['TWILIO_AUTH_TOKEN']
  DEFAULT_PHONE_NUMBER = ENV['DEFAULT_PHONE_NUMBER']

  def initialize
    @client = Twilio::REST::Client.new(ACCOUNT_SID, AUTH_TOKEN)
  end

  def send_text(body, to=DEFAULT_PHONE_NUMBER)
    # Make a text message
    @client.account.messages.create(
      from: '+17865653665',
      to: "+1#{to}",
      body: body
    )
  end
end
