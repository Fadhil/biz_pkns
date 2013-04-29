class Ability
  include CanCan::Ability

  def initialize(resource)
    # Define abilities for the passed in user here. For example:
    #

      resource ||= User.new # guest user (not logged in)
      if resource.class == User
        if resource.admin?
          can :manage, :all
        else
          can :read, :all
          can :manage, User, id: resource.id
          can :contact, :all
          # can :contact, Consultant do |c|
          #   unless user.email.nil
          # end
        end
      elsif resource.class == Consultant
        can :manage, Consultant, id: consultant.id
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
