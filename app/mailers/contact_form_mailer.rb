class ContactFormMailer < ActionMailer::Base
  default from: "\"PKNS BIZ DATA\" <admin@pknsbizdata.com>"

  def contact(name, email, content)
    @name = name
    @email = email
    @content = content

    mail to: "\"PKNS BIZ DATA\" <admin@pknsbizdata.com>", subject: "Contact", cc: "murni@asl-solutions.com" #, from: %("#{@emailname}" <#{@emailsender}>)
  end
end
