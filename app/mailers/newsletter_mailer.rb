class NewsletterMailer < ActionMailer::Base
  default from: "admin@pknsbizclub.com"

  def mailer_newsletter(user, subject, message)
    @user = user
    @emailsubject = subject
    @emailmessage = message
    mail(:to => "epi.skywalker@gmail.com", subject: @emailsubject)
  end
end
