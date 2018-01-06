class PostPolicy < ApplicationPolicy
  def update?
    user.has_proper_access?
  end
  
  def edit?
    user.has_proper_access?
  end
  
  def destroy?
    user.has_proper_access?
  end
  
  def index?
    user.has_proper_access?
  end
  
  def create?
    user.has_proper_access?
  end
end