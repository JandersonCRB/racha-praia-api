json.data do
	json.array! @players do |player|
		json.partial! 'v1/players/players', player: player
	end
end