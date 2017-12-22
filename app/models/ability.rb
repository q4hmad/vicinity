class Ability
  include CanCan::Ability

  def initialize(user)
    user || = User.new(role: 'client' )

    if user.admin?
      can :manage,
end
