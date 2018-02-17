class V1::MatchesController < ApplicationController
	def index
	end

	def create
		@match = Match.new(matches_params)

		@match.save
		render :create, status: :created
	end

	private

	def matches_params
		params.require(:matches).permit(:date, :team_a_id => [], :team_b_id => [])
	end
end
