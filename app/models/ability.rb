class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role?(:admin)
      can :manage, :all
    else
      can :read, :all
      if user.persisted?
        can :show, :my_bookings
        can :create, Booking
      else
        cannot :show, :my_bookings
      end
      can :welcome, Category
    end
  end
end
