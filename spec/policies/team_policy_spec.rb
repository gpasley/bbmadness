require 'rails_helper'

describe TeamPolicy do
  subject { TeamPolicy }
  
  permissions :update?, :edit?, :new?, :create?, :index? do
    it "denies access if not admin" do
      expect(subject).not_to permit(User.new(is_admin: false), Team.new)
    end

    it "grants access if user is an admin" do
      expect(subject).to permit(User.new(is_admin: true), Team.new)
    end
  end
  
end