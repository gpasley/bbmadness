require 'rails_helper'

describe SheetPolicy do
  subject { SheetPolicy }

  permissions :update?, :edit?, :new?, :create?, :leaders?, :my_brackets? do
    it "grants access if not admin" do
      expect(subject).to permit(User.new(is_admin: false), Sheet.new)
    end

    it "grants access if user is an admin" do
      expect(subject).to permit(User.new(is_admin: true), Sheet.new)
    end
  end
  
  permissions :get_points?, :lock_sheets?, :mark_paid?, :destroy? do
    it "grants access if not admin" do
      expect(subject).not_to permit(User.new(is_admin: false), Sheet.new)
    end

    it "grants access if user is an admin" do
      expect(subject).to permit(User.new(is_admin: true), Sheet.new)
    end
  end
  
end