class FixShittyMigrations < ActiveRecord::Migration[5.1]
  def change
    remove_column :matches, :team_a_id
    remove_column :matches, :team_b_id
    remove_column :teams, :players_id
    add_foreign_key :teams, :matches
  end
end
