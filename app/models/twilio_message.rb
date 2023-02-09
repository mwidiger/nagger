class TwilioMessage
  attr_reader :account_sid, :auth_token, :error_message
  attr_accessor :to_number, :message_text

  def initialize(params = {})
    @account_sid = params[:account_sid]
    @auth_token = params[:auth_token]
    @from_number = ENV['TWILIO_PHONE_NO']
    @to_number = params[:to_number]
    @message_text = params[:message_text]
    @error_message = ""

    if @account_sid.blank? || @auth_token.blank?
      @error_message = "Missing Twilio Credentials"
    end
  end

  def send
    return self if @error_message.present?
  end
end
