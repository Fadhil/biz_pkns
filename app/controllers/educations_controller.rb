class EducationsController < ApplicationController
  def new
    @education = Education.new
  end

  def create
    @education = Education.new(params[:education])

    respond_to do |format|
      if @education.save
        format.html { redirect_to new_education_path, notice: 'Education type was successfully created.'}
      end
    end
  end
end
