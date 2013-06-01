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
    if params[:user_select].present?
      case params[:user_select]
      when 'all_users'
        the_notice = "ALL THE USERS!"
        users = User.nonadmin
      when 'members'
        the_notice = "THE MEMBERS"
        users = User.nonadmin.members
      when 'nonmembers'
        the_notice = "THE NONMEMBERS"
        users = User.nonadmin.nonmembers
      else
        the_notice = "NOthing doing"
        users = User.nonadmin
      end
    end
    if !users.empty?
      users.each do |user|
        @survey.users << user unless @survey.users.include?(user)
      end
    end
    respond_to do |format|
      format.html { redirect_to @survey, notice: the_notice }
    end
  end
end
