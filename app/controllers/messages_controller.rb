class MessagesController < ApplicationController
  def create
    @message = TwilioMessage.new(params)
    @message.send if request.referrer == messages_path
  end
end
