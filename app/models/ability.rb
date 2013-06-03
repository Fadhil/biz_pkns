class Ability
  include CanCan::Ability

  def initialize(resource)
    # Define abilities for the passed in user here. For example:
    #

      resource ||= nil # guest user (not logged in)
      if resource.is_a?(User)
        if resource.admin?
          can :manage, :all
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
          #cannot :all, :surveys, except: [:take]
        else
          #can :read, :all
          can :manage, User, id: resource.id # Non Member
          can :contact, :all
          can :sent, :all
          can :read, Consultant
          can :my_courses, :pages
          cannot :consultation, :pages
          cannot :all, :pages
          cannot :all, :admins
          cannot :index, User
          can [:take], Survey
          can :finish_survey, Survey
          cannot [:index, :edit, :update, :destroy], Survey
          #cannot :all, :surveys, except: [:take]
        end
      elsif resource.is_a?(Consultant)
        can :manage, Consultant, id: resource.id
        can :read, User
        can :manage, Course, program_id: resource.programs.all.map(&:id)
        can :create, Course
        can :manage, AttendanceList, program_id: resource.programs.all.map(&:id)
      else 
        cannot :index, :course
      end
      # if user.super_admin?
      #   can :manage, :all
      # elseif user.admin?
      #   can :manage, :all
      # elseif user.consultant?
      #   can :manage, :all
      # else
      #   can :read, :all
      # end
  end

  # def initialize(consultant)
  #   consultant ||=Consultant.new
  #   if consultant
  #     # can :view, Consultant, id: consultant.id
  #     can :manage, Consultant, id: consultant.id
  #     # can :destroy, Consultant, id: consultant.id
  #     # can :manage, Program, id: program.id
  #   end
  # end
end
