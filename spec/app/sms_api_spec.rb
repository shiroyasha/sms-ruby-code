require "spec_helper"

RSpec.describe SmsApi do
  def app
    SmsApi
  end

  describe "POST /sms-code" do
    it "executes my code" do
      post "/sms-code", :Body => "(1..5).map { |el| el*2 }"

      expect(last_response.status).to eq 200
      expect(last_response.body).to include "[2, 4, 6, 8, 10]"
    end
  end
end
