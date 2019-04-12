class GamesController < ApplicationController

  def show
    @game = Game.find_by(id: params[:id])

    render json: @game, serializer:GameSerializer, root: false
  end
end
