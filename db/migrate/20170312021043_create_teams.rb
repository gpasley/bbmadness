class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :display_name
      t.string :url
      t.string :game
      t.boolean :loss_yn, :default => false

      t.timestamps
    end
  end
end
