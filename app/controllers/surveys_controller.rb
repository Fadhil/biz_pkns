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
end
