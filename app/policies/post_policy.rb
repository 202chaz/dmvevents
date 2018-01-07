class PostPolicy < ApplicationPolicy
  def update?
    user.try(:has_proper_access?)
  end
  
  def edit?
    user.try(:has_proper_access?)
  end
  
  def destroy?
    user.try(:has_proper_access?)
  end
  
  def index?
    user.try(:has_proper_access?)
  end
  
  def create?
    user.try(:has_proper_access?)
  end
end