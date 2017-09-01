class TwilioController < ApplicationController
  skip_before_action :verify_authenticity_token

  def send_text
#  	account_sid = ENV['TWILIO_SID']
  	account_sid = "AC1ed068dc6c7d93f97f927d064031758e"
	# auth_token = ENV['REST_API']
	auth_token = "dc9591ac96229ac7271edba16a26befe"

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