module ApplicationHelper
  def team_loss(team)
    team = Team.where(name: team, loss_yn: true)
    (team.size > 0) ? true : false
  end
  
  def flash_class(level)
    case level  
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-error"
      when :alert then "alert"
    end
  end
  
  def humanize_boolean(bool)
    bool ? 'Yes' : 'No'
  end
end
