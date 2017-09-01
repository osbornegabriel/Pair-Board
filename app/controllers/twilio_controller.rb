class TwilioController < ApplicationController
  skip_before_action :verify_authenticity_token

  def send_text
  	account_sid = ENV['TWILIO_SID']
	auth_token = ENV['REST_API']
	
	@client = Twilio::REST::Client.new account_sid, auth_token
	
	@client.messages.create(
      from: '18722013993',

      # if params[:mentor]
      #   to: "#{params[:mentor].phone}"
      # end

      # if params[:mentee]
      #   to: "#{params[:mentee].phone}"
      # end

      # the 'to' ideally is the mentor or mentee phone number, but Twilio wants money
      to: "12246320584",
      body: "#{params[:message]}"
	)
	redirect_to "/slots"
  end
end