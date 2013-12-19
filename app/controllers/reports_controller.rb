class ReportsController < ApplicationController
layout 'kpi_report', only: [:programs]
layout 'report_layout'

  def users
    @nonadmin_users = User.nonadmin
    @number_of_users = @nonadmin_users.count
    @number_of_users_male = @nonadmin_users.male.count
    @number_of_users_female = @nonadmin_users.female.count
    @member_users = @nonadmin_users.members
    @number_of_members = @member_users.count
    @number_of_members_male = @member_users.male.count
    @number_of_members_female = @member_users.female.count
    @nonmember_users = @nonadmin_users.nonmembers
    @number_of_nonmembers = @nonmember_users.count
    @number_of_nonmembers_male = @nonmember_users.male.count
    @number_of_nonmembers_female = @nonmember_users.female.count

    @percent_members = ( (@number_of_members.to_f / @number_of_users.to_f ) * 100 ).round(2).to_s + "%"
    @percent_nonmembers = ( ( @number_of_nonmembers.to_f / @number_of_users.to_f ) * 100 ).round(2).to_s + "%"


    @members = @nonadmin_users.members
    @nonmembers = @nonadmin_users.nonmembers

    @business_categories = BusinessCategory.all.map(&:name).uniq

    @users_with_business = User.joins(:business_profiles).where('business_profiles.category in (?)',@business_categories).count
    @business_categories_users = {}
    
    
    @total_businesses = 0
    @business_categories.each do |b|
      @business_categories_users[b] = {} unless @business_categories_users[b]
      @business_categories_users[b]['count'] = @members.joins(:business_profiles).where('business_profiles.category = ?', b ).count 
      @total_businesses += @members.joins(:business_profiles).where('business_profiles.category = ?', b ).count 
    end

    @business_categories_users.each do |key,value|
        @business_categories_users[key]['percentage'] = ((@business_categories_users[key]['count'].to_f / @total_businesses.to_f) * 100 ).round(2).to_s + "%"
    end

    @by_program_data = Program.users_by_program
    


  end

  def consultants
    @total_consultants = Consultant.all.count
    @active_consultants = Consultant.active.count
    @inactive_consultants = Consultant.inactive.count

    @percent_active_consultants = (( @active_consultants.to_f / @total_consultants.to_f ) * 100 ).round(2).to_s + "%"
    @percent_inactive_consultants = (( @inactive_consultants.to_f / @total_consultants.to_f ) * 100 ).round(2).to_s + "%"

    if params[:report].present?
        @report_type = params[:report][:type]
    end

    if @report_type && params[@report_type.to_sym].present?
        start_year = params[@report_type.to_sym][:start_year].to_i
        end_year = params[@report_type.to_sym][:end_year].try(:to_i) || start_year

        @consultants = Consultant.between_years(start_year, end_year)
    end

    respond_to do |format|
        format.html
        format.js
    end
  end

  def programs

    if params[:report].present?
        @report_type = params[:report][:type]
    end

    if @report_type && params[@report_type.to_sym].present?
        unless @report_type == 'consultant_list' || @report_type =='user_program'
            @program = Program.find(params[@report_type.to_sym][:program])

        end
        if @report_type == 'consultant_list'

            start_year = params[@report_type.to_sym][:start_year].to_i
            end_year = params[@report_type.to_sym][:end_year].try(:to_i) || start_year

            @consultants = Consultant.between_years(start_year, end_year)
        end
        if @report_type == 'user_program'
            @programs = Program.active
        end
        start_year = params[@report_type.to_sym][:start_year].to_i
        end_year = params[@report_type.to_sym][:end_year].try(:to_i) || start_year
        @years = (start_year..end_year).to_a

        if @report_type=='user_by_activity'
            
            year = start_year

            course_types = @program.course_types(year)
            @result_set = @program.count_users_by_course(course_types, year)
        end
    end


    respond_to do |format|
        format.html { render @report_type}
        format.js
    end
  end



  def kpi
    @kpi_results = Program.get_kpi
    month = case Date.today.month
    when 1
        "Januari"
    when 2
        "Februari"
    when 3
        "Mac"
    when 4
        "April"
    when 5
        "Mei"
    when 6
        "Jun"
    when 7
        "Julai"
    when 8
        "Ogos"
    when 9
        "September"
    when 10
        "Oktober"
    when 11
        "November"
    when 12
        "Disember"
    else
        "Default"
    end

    year = Date.today.year
    @the_date = "#{month} #{year}"

    render layout: 'kpi_report'
  end
end
