require "spec_helper"

describe ConsultantMailer do
  describe "signup_notification" do
    let(:mail) { ConsultantMailer.signup_notification }

    it "renders the headers" do
      mail.subject.should eq("Signup notification")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
