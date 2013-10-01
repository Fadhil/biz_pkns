class ContactFormMailer < ActionMailer::Base
  default from: "\"PKNS BIZ DATA\" <admin@pknsbizclub.com>"

  def contact(name, email, content)
    @name = name
    @email = email
    @content = content

    mail to: "\"PKNS BIZ DATA\" <admin@pknsbizclub.com>", subject: "Contact", cc: "1.shahida@gmail.com" #, from: %("#{@emailname}" <#{@emailsender}>)
  end
end
