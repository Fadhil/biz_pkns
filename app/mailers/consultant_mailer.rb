class ConsultantMailer < ActionMailer::Base
  default from: "admin@pknsbizclub.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.consultant_mailer.signup_notification.subject
  #
  def signup_notification(consultant)
    @consultant = consultant
    @greeting = "Hi"

    mail to: consultant.email, subject: "Anda telah dilantik menjadi perunding PKNS Biz Club!"
    #current_user.email
  end

  def contact(consultant, name, from, subject, message)
    @consultant = consultant
    @emailname = name
    @emailsender = from
    @emailsubject = subject
    @emailmessage = message
    mail to: consultant.email, subject: @emailsubject, cc: "1.shahida@gmail.com" , from: "\"#{@emailname}\" <#{@emailsender}>"
  end
end
