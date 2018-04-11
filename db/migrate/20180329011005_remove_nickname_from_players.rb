class RemoveNicknameFromPlayers < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :nickname
    rename_column :players, :fullname, :name
  end
end
