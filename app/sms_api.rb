class SmsApi < Sinatra::Base

  def execute(code)
    eval(code)
  end

  post "/sms-code" do
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message execute(params[:Body])
    end

    twiml.text
  end
end
