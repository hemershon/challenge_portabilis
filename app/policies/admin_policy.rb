class AdminPolicy < ApplicationPolicy
  class Scope < Scope

    def new?
      user.full_access
    end
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
end
