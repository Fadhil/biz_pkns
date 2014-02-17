class UserMailer < ActionMailer::Base
  default from: "\"PKNS BIZ DATA\" <admin@pknsbizdata.com>"

  def mail_survey_invite(user, survey)
    @user = user
    @survey = survey
    mail(:to => user.email, :subject => t('you_were_invited_to_do_a_survey') , from: "\"PKNS BizData\" <admin@pknsbizdata.com>")
  end
end
