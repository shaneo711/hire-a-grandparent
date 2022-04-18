class GrandparentPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def index?
    true
  end

  def show?
    true
  end

  def update?
    # If user is owner of grandparent profile => true
    # Otherwise => false
    # user => current_user
    # record => @grandparent
    user_is_owner_or_admin?
  end

  def destroy?
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    user == record.user || user.admin
  end
end
