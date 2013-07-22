class ReportsController < ApplicationController
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

    # @employment_own_business = User.nonadmin.where('current_employment_status = ?','own_business').count
    # @percent_employment_own_business = (( @employment_own_business.to_f / @number_of_users.to_f ) * 100 ).round(2).to_s + "%"
    # @employment_working_studying = User.nonadmin.where('current_employment_status = ?','working_studying').count
    # @percent_employment_working_studying = (( @employment_working_studying.to_f / @number_of_users.to_f ) * 100 ).round(2).to_s + "%"
    # @employment_studying = User.nonadmin.where('current_employment_status = ?','studying').count
    # @percent_employment_studying = (( @employment_studying.to_f / @number_of_users.to_f ) * 100 ).round(2).to_s + "%"
    # @employment_working_self_business = User.nonadmin.where('current_employment_status = ?','working_self_business').count
    # @percent_employment_working_self_business = (( @employment_working_self_business.to_f / @number_of_users.to_f ) * 100 ).round(2).to_s + "%"
    # @employment_part_time_business = User.nonadmin.where('current_employment_status = ?','part_time_business').count
    # @percent_employment_part_time_business = (( @employment_part_time_business.to_f / @number_of_users.to_f ) * 100 ).round(2).to_s + "%"
    # @employment_unknown = User.nonadmin.where('current_employment_status is null').count
    # @percent_employment_unknown = (( @employment_unknown.to_f / @number_of_users.to_f ) * 100 ).round(2).to_s + "%"

    @business_categories = BusinessCategory.all.map(&:name).uniq

    @users_with_business = User.joins(:business_profiles).where('business_profiles.category in (?)',@business_categories).count
    @business_categories_users = []
    @business_categories_percentages = []
    @business_categories.each do |b|
      @business_categories_users << User.joins(:business_profiles).where('business_profiles.category = ?', b ).count

    @members = @nonadmin_users.members
    @nonmembers = @nonadmin_users.nonmembers
    end

    bpu_sum = @business_categories_users.sum
    @business_categories_users.each do |b| 
      @business_categories_percentages << (( b.to_f / bpu_sum.to_f )* 100 ).round(2).to_s + "%"
    end

  end

  def consultants
    @total_consultants = Consultant.all.count
    @active_consultants = Consultant.active.count
    @inactive_consultants = Consultant.inactive.count

    @percent_active_consultants = (( @active_consultants.to_f / @total_consultants.to_f ) * 100 ).round(2).to_s + "%"
    @percent_inactive_consultants = (( @inactive_consultants.to_f / @total_consultants.to_f ) * 100 ).round(2).to_s + "%"
  end

  def programs
  end
end
