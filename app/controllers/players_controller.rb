class PlayersController < ApplicationController
  # GET /players
  def index
    players = Rails.cache.fetch("players", expires_in: 5.minutes) do
      Player.paginate(page: params[:page], per_page: 20)
    end
    render json: players
  end


  # GET /players/:id
  def show
    player = Player.find(params[:id])
    render json: player
  end

  # POST /players
  def create
    player = Player.new(player_params)
    if player.save
      render json: player, status: :created
    else
      render json: player.errors, status: :unprocessable_entity
    end
  end

  # PUT/PATCH /players/:id
  def update
    player = Player.find(params[:id])
    if player.update(player_params)
      render json: player
    else
      render json: player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /players/:id
  def destroy
    player = Player.find(params[:id])
    player.destroy
    head :no_content
  end

  private

  # Strong Parameters
  def player_params
    params.require(:player).permit(:name, :team, :position, :points_per_game, :assists_per_game, :rebounds_per_game)
  end
end
