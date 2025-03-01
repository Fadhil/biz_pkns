class ConsultantMailer < ActionMailer::Base
  default from: "\"PKNS BIZ DATA\" <admin@pknsbizdata.com>"

  def signup_notification(consultant)
    @consultant = consultant
    @greeting = "Hi"

    mail to: consultant.email, subject: "Anda telah dilantik menjadi Rakan Strategik Bahagian Pembangunan Usahawan PKNS"
    #current_user.email
  end

  def contact(consultant, name, from, subject, message)
    @consultant = consultant
    @emailname = name
    @emailsender = from
    @emailsubject = subject
    @emailmessage = message
    mail to: consultant.email, subject: @emailsubject, cc: "murni@asl-solutions.com" #, from: "\"#{@emailname}\" <#{@emailsender}>"
  end
end
