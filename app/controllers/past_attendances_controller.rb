class PastAttendancesController < ApplicationController
  require 'csv' 


  def index
    @past_attendances = PastAttendance.successful
  end

  def new

  end



  def create

    data = params[:past_attendance][:file].read
    @parsed_file=CSV.parse(data)
    n=0
    completed = true
    @parsed_file.each  do |row|
      unless row[0] == 'No'
        c=PastAttendance.where('course = ? AND ic_number = ?',row[2], row[8]).first || PastAttendance.new
        c.program=row[1]
        c.course=row[2]
        c.start_date=row[3]
        c.end_date=row[4]
        c.venue= row[5]
        c.first_name = row[6]
        c.last_name = row[7]
        c.ic_number = row[8]
        c.phone = row[9]
        c.email = row[10]
        c.successful = false
        if c.save
          n=n+1
          GC.start if n%50==0
        else 
          completed = false
        end
      end
    end
    if completed
      PastAttendance.unsuccessful.each do |p|
        p.make_successful
        p.create_member
      end
      notice = t('upload_successful')
    else 
      notice = t('upload_unsuccessful')
    end

    respond_to do |format|
      format.html { redirect_to past_attendances_path, notice: notice }
    end
  end

  def show
  end
end
