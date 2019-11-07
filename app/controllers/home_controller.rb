class HomeController < ApplicationController
  def index
    @most_released = Film.order(release_year: :desc).limit(5)
    @highest_rated = Film.order(rental_rate: :desc).limit(5)
  end
end
