class SearchController < ApplicationController

  def index
    @films = Film.where("title LIKE ?", "%#{params[:query]}%").limit(10)
  end

end