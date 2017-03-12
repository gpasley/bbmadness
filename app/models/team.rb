class Team < ApplicationRecord
  validates_presence_of :name, :game, :rank
end
