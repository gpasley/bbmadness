class SheetPolicy < ApplicationPolicy
  attr_reader :user, :sheet
  
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user  = user
      @scope = scope
    end

    def resolve
      if user.is_admin?
        scope.all
      else
        scope.where(user_id: user.id)
      end
    end
  end

  def initialize(user, sheet)
    @user = user
    @sheet = sheet
  end
  
  def leaders?
    true
  end
  
  def my_brackets?
    true
  end
  
  def get_points?
    @user.is_admin?
  end
  
  def lock_sheets?
    @user.is_admin?
  end
  
  def mark_paid?
    @user.is_admin?
  end
  
  def show?
    true
  end
  
  def new?
    true
  end
  
  def create?
    true
  end
  
  def edit?
    true if (not @sheet.is_locked? && (@sheet.user_id = @user.id)) || @user.is_admin?
  end
  
  def update?
    true if (not @sheet.is_locked? && (@sheet.user_id = @user.id)) || @user.is_admin?
  end
  
  def destroy?
    @user.is_admin? 
  end
end