class SurveysController < ApplicationController
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
        format.html { redirect_to surveys_path, notice: t('successfully_created_survey') }
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
  end

  def send_survey
    the_notice=''
    users = []
    @survey = Survey.find(params[:id])
    if params[:survey_user_select].present?
      case params[:survey_user_select]
      when 'all_users'
        the_notice = "ALL THE USERS!"
        users = User.nonadmin
      when 'members'
        the_notice = "THE MEMBERS"
        users = User.nonadmin.members
      when 'nonmembers'
        the_notice = "THE NONMEMBERS"
        users = User.nonadmin.nonmembers
      when 'users_by_program'
        if params[:survey_program_select].present?
          the_program = Program.find(params[:survey_program_select])
          the_notice = "Users for program: #{the_program.name}"
          users = the_program.users
        end
      when 'users_by_course'
        if params[:survey_course_select].present?
          the_course = Course.find(params[:survey_course_select])
          the_notice = "Users for course: #{the_course.name}"
          users = the_course.users
        end
      else
        the_notice = "NOthing doing"
        users = User.nonadmin
      end
    end
    if !users.empty?
      users.uniq.each do |user|
        @survey.users << user unless @survey.users.include?(user)
      end
    end
    respond_to do |format|
      format.html { redirect_to @survey, notice: the_notice }
    end
  end
end
