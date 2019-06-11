class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Post
    can :read, Profile
    can :read, Comment
    can :read, User
    if user.present?  # additional permissions for logged in users (they can read their own posts)
      can :manage, Profile, user_id: user.id
      can :manage, User, id: user.id
      can :manage, Post, user_id: user.id
      can :manage, Comment, user_id: user.id
      can :create, Inappropiete, user_id: user.id
      if user.admin?  # additional permissions for administrators
        can :manage, :all
      end
    end
  end
end
