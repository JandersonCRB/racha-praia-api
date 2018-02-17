class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.references :matches, foreign_key: true
      t.references :players, foreign_key: true

      t.timestamps
    end
  end
end
