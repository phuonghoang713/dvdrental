class FilmsController < ApplicationController
  before_action :set_film, only: [:show]
  def index
    @films = Film.all.limit(100)
  end

  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_film
    @film = Film.find(params[:id])
  end
end
