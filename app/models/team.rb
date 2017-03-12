class Team < ApplicationRecord
  validates_presence_of :name, :rank, :match_up, :group
  validates :group, inclusion: { in: %w(a b A B) }
  validates :match_up, numericality: { only_integer: true }, inclusion: 1..16
  
  before_save :set_game, :set_display_name
  
  def set_game
    self.group = self.group.upcase
    self.game  = self.match_up.to_s + self.group
  end
  
  def set_display_name
    self.display_name = self.rank.to_s + ' ' + self.name
  end
end
