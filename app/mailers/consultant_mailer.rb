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

    mail to: consultant.email, subject: "You have been endorsed as a PKNS Biz Club consultant!"
  end
end
