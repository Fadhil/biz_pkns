class ConsultantMailer < ActionMailer::Base
  default from: "pkns@iedwrites.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.consultant_mailer.signup_notification.subject
  #
  def signup_notification(consultant)
    @consultant = consultant
    @greeting = "Hi"

    mail to: consultant.email, subject: "You has been endorsed as PKNS Biz Club consultant!"
  end
end
