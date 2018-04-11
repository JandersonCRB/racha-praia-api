class V1::MatchesController < ApplicationController
	before_action :change_params_name
	def index
	end

	def create
		byebug
		@match = Match.new(matches_params)
		# byebug
		# matches_params.teams_attributes.each do |team_hash|
		# 	match.teams.build(team)
		# end

		@match.save
		render :create, status: :created
	end

	private

	def matches_params
		params.require(:match).permit(:date, :teams_attributes => [
				:player_ids => []
		])
	end

	def change_params_name
		params[:match][:teams_attributes] ||= params[:match].delete :teams #makes request accept "teams" instead of only "teams_attributes"
	end
end
