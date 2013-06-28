class UserMailer < ActionMailer::Base
  default from: "admin@pknsbizclub.com"

  def mail_survey_invite(user, survey)
    @user = user
    @survey = survey
    mail(:to => user.email, :subject => I18n.t('you_were_invited_to_do_a_survey')), , from: "\"PKNS BizData\" <admin@pknsbizclub.com>"
  end
end
