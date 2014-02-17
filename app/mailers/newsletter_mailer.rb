class NewsletterMailer < ActionMailer::Base
  default from: "\"PKNS BIZ DATA\" <admin@pknsbizdata.com>"

  def mailer_newsletter(user, subject, message)
    @user = user
    @emailsubject = subject
    @emailmessage = message
    mail(:to => user.email, subject: @emailsubject)
  end
end