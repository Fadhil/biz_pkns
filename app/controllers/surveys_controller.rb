class SurveysController < ApplicationController
  load_and_authorize_resource
  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(params[:survey])
    if @survey.save
      respond_to do |format|
        format.html { redirect_to @survey, notice: t('successfully_created_survey') }
      end
    end
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  def update
    @survey = Survey.find(params[:id])

    if @survey.update_attributes(params[:survey])
      respond_to do |format|
        format.html { redirect_to @survey, notice: t('successfully_updated_survey') }
      end
    end
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy

    respond_to do |format|
      format.html { redirect_to request.referrer }
      format.json { head :no_content }
    end
  end

  def send_survey
    the_notice=t('successfully_sent_survey')
    users = []
    @survey = Survey.find(params[:id])
    if params[:survey_user_select].present?
      case params[:survey_user_select]
      when 'all_users'
        users = User.nonadmin
      when 'members'
        users = User.nonadmin.members
      when 'nonmembers'
        users = User.nonadmin.nonmembers
      when 'users_by_program'
        if params[:survey_program_select].present?
          the_program = Program.find(params[:survey_program_select])
          users = the_program.users
        end
      when 'users_by_course'
        if params[:survey_course_select].present?
          the_course = Course.find(params[:survey_course_select])
          users = the_course.users
        end
      else
        users = User.nonadmin
      end
    end
    if !users.empty?
      users.uniq.each do |user|
        @survey.users << user unless @survey.users.include?(user)
        UserMailer.mail_survey_invite(user, @survey).deliver
      end
      @survey.sent = true
    end
    respond_to do |format|
      if @survey.save
        format.html { redirect_to @survey, notice: the_notice }
      else
        the_notice = 'something went wrong'
        format.html { redirect_to @survey, notice: the_notice}
      end
    end
  end

  def take
    @survey = Survey.find(params[:id])
    @questions = @survey.questions
  end

  def finish_survey
    params[:question].each do |q|
      current_user.responses << Response.create(question_id: q[1][:question_id], answer: q[1][:answer])
    end
    survey = Survey.find(params[:id])
    completed_survey = current_user.completed_surveys.where(survey_id: survey).first
    completed_survey.completed = true
    completed_survey.save
    respond_to do |format|
      if !current_user.unfinished_surveys.empty?
        format.html { redirect_to surveys_user_path(current_user), notice: t('thanks_for_completing_our_survey') }
      else
        format.html { redirect_to root_path, notice: t('thanks_for_completing_our_survey')}
      end
    end
  end


  def report
    @survey = Survey.find(params[:id])
  end
end
