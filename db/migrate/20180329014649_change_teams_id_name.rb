class ChangeTeamsIdName < ActiveRecord::Migration[5.1]
  def change
    rename_column :teams, :matches_id, :match_id
  end
end
