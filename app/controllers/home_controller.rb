class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      @picks = Sheet.where(is_master: false).group(:round6).order(:round6).size
      @sheet = Sheet.where("is_master = ?", true).first
      @leaders = Sheet.where("is_master = ?", false).order("total_points desc").limit(10)
      @locked = Sheet.where("is_locked = ?", true).first
    else
      redirect_to new_user_session_path
    end
  end
  
end
