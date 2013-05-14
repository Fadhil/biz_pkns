class Ability
  include CanCan::Ability

  def initialize(resource)
    # Define abilities for the passed in user here. For example:
    #

      resource ||= nil # guest user (not logged in)
      if resource.is_a?(User)
        if resource.admin?
          can :manage, :all
        elsif resource.confirmed
          puts 'not in here'
          can :read, :all
          can :manage, User, id: resource.id
          can :contact, :all
          can :sent, :all
          can :read, Consultant
          cannot :index, :course
          can :my_courses, :pages
          # can :contact, Consultant do |c|
          #   unless user.email.nil
          # end
        else
          puts 'but in here'
          can :manage, User, id: resource.id
          can :contact, :all
          can :sent, :all
          can :read, Consultant
          can :read, :all
          can :my_courses, :pages

        end
      elsif resource.is_a?(Consultant)
        can :manage, Consultant, id: resource.id
        can :read, Course
        can :read, User
        can :manage, Course, program_id: resource.try(:program).try(:id)
        can :manage, AttendanceList, program_id: resource.try(:program).try(:id)
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
