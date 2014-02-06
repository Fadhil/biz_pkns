class NewsletterMailer < ActionMailer::Base
  default from: "pkns@iedwrites.com" #"\"PKNS BIZ DATA\" <admin@pknsbizclub.com>"

  def mailer_newsletter(user, subject, message)
    @user = user
    @emailsubject = subject
    @emailmessage = message
    mail(:to => user.email, subject: @emailsubject)
  end
end