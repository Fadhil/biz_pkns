class AttendanceListController < ApplicationController

  def update
    @attendance_list = AttendanceList.find(params[:id])
    @attendance_list.update_attributes(params[:attendance_list])
    
    @attendance_list.save
    respond_to do |format|
      format.html { redirect_to request.referrer || root_path }
    end
  end
end
