class EmailController < ApplicationController
  def show
    @newsletter = Newsletter.find(params[:id])

    respond_to do |format|
      format.html { render :layout => false } # show.html.erb
      format.json { render json: @newsletter }
    end
  end
end