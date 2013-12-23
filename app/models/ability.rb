class Ability
  include CanCan::Ability

  def initialize(resource)
    # Define abilities for the passed in user here. For example:
    #

      resource ||= nil # guest user (not logged in)
      if resource.is_a?(User)
        if resource.admin?
          can :manage, :all
          cannot [:edit, :destroy], Survey, sent: true
        elsif resource.confirmed && resource.profile_complete? # Member
          can :manage, User, id: resource.id
          can :read, :all
          can :contact, :all
          can :sent, :all
          can :read, Consultant
          can :my_courses, :pages
          cannot :index, :course
          cannot :all, :admins
          can :consultation, :pages
          cannot :index, User
          can [:take], Survey
          can :finish_survey, Survey
          cannot [:index, :edit, :update, :destroy], Survey
          cannot [:edit, :update, :destroy], Blog
          can :manage, Advert, user_id: resource.id
          cannot [:edit,:destroy], Survey, sent: true
        else
          can :manage, User, id: resource.id # Non Member
          can :contact, :all
          can :sent, :all
          can :read, Consultant
          can :my_courses, :pages
          cannot :consultation, :pages
          cannot :all, :pages
          cannot :all, :admins
          cannot :index, User
          can [:index, :show], Program
          can [:take], Survey
          can :finish_survey, Survey
          cannot [:index, :edit, :update, :destroy], Survey
          cannot [:edit, :update, :destroy], Blog
          #cannot :all, :surveys, except: [:take]
          cannot :all, Advert
        end
      elsif resource.is_a?(Consultant)
        can :manage, Consultant, id: resource.id
        can :consultation, :pages
        can :read, User
        can :manage, Course, program_id: resource.programs.all.map(&:id)
        can :create, Course
        can :manage, AttendanceList, program_id: resource.programs.all.map(&:id)
        can :manage, Survey
        can :manage, Advert, consultant_id: resource.id
        can :all, Newsletter
        cannot [:edit, :destroy], Survey, sent: true
        cannot [:edit, :update, :destroy], Blog

      else 
        cannot :index, :course
        can [:all, :index, :show], Blog
      end
  end
end
