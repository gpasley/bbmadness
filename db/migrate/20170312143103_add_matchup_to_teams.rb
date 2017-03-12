class AddMatchupToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :group, :string
    add_column :teams, :match_up, :integer
  end
end
