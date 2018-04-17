class V1::PlayersController < ApplicationController
	def index
		@players = Player.all

		render :index, status: :ok
	end

	def create
		@player = Player.new(player_params)

		if @player.save
			render :create, status: :created
		else
			render json: @player.errors.full_messages, status: :unprocessable_entity
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
		params.require(:player).permit(:name)
	end
end
