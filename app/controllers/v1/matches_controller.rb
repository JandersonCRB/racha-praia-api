class V1::MatchesController < ApplicationController
	before_action :change_params_name
	def index
	end

	def create
		@match = Match.new(matches_params)

		if @match.save
			render :create, status: :created
		else
			render json: @match.errors.full_messages, status: :unprocessable_entity
		end
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
