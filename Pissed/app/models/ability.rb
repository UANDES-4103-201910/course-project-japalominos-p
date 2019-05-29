class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Post, public: true

    if user.present?  # additional permissions for logged in users (they can read their own posts)
      can :manage, Profile, user_id: user.id

      if user.admin?  # additional permissions for administrators
        can :mange, :all
      end
    end
  end
end
