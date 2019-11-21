class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def confirm?
    record.star_part.user_id == user.id
  end

  def decline?
    record.star_part.user_id == user.id
  end

  def update?
    record.star_part.user_id == user.id
  end

  def destroy?
    record.user == user # Only restaurant creator can update it
  end
end
