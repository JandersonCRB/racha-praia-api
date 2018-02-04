class V1::PlayersController < ApplicationController
	def index
		@players = Player.all

		render json: @players, status: :ok
	end

	def create
		@player = Player.new(player_params)

		if @player.save
			render json: @player, status: :created
		else
		end
	end

	def destroy
		@player = Player.where(id: params[:id]).first
		if @player.destroy
			head(:ok)
		else
			head(:unprocessable_entity)
		end
	end

	private

	def player_params
		params.require(:player).permit(:fullname, :nickname)
	end
end
