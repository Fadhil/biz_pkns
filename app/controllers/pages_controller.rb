class PagesController < ApplicationController
  def welcome
  end

  def consultation
    @consultants = Consultant.all
  end

  def upcoming_courses
    if params[:search].present?
      if params[:search][:terms].present?
        search_terms = params[:search][:terms].split(' ').join('%')
        @courses = Course.active.upcoming.where('LOWER(name) like ?',"%#{search_terms}%")
      else
        @courses = Course.active.upcoming
      end
    else
      @courses = Course.active.upcoming
    end
  end

  def business_directory
    if params[:search].present?
      unless params[:search][:state] == ''
        state = params[:search][:state] 
      end
      unless params[:search][:category] == ''
        category = params[:search][:category]
      end
      unless params[:search][:city] == ''
        city = params[:search][:city]
      end
      if category && !(state || city)
        @users = User.joins(:business_profile).where('business_profiles.category' => category)
      elsif (state || city) && !category
        if !city
          @users = User.joins(:business_profile=>{:address=>:city}).where('cities.state_name'=>state)
        else
          @users = User.joins(:business_profile=>{:address=>:city}).where('cities.id'=>city)
        end
      elsif category && (state || city)
        if !city
          @users = User.joins(:business_profile=>{:address=>:city}).where('cities.state_name' => state, 'business_profiles.category' => category)
        else
          @users = User.joins(:business_profile=>{:address=>:city}).where('cities.id' => city, 'business_profiles.category' => category)          
        end
      else
        @users = User.all
      end
    else
      @users = User.joins(:business_profile)
    end
  end
end
