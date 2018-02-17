class AddTeamsToMatches < ActiveRecord::Migration[5.1]
  def change
  	add_reference :matches, :team_a, array: true, default: []
  	add_reference :matches, :team_b, array: true, default: []
  end
end
