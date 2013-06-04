class AttendanceListController < ApplicationController

  def update
    @attendance_list = AttendanceList.find(params[:id])
    @attendance_list.update_attributes(params[:attendance_list])
    if @attendance_list.save
      course = @attendance_list.course
      course.status = false
      course.save
    end
    respond_to do |format|
      format.html { redirect_to request.referrer || root_path }
    end
  end
end
