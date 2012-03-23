class AdminAbility
  include CanCan::Ability
  def initialize(admin)
    if admin
      can :access, :rails_admin
      can :manage, :all
    end
  end
end
