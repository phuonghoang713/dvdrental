json.extract! film, :id, :title, :rental_rate, :release_year, :description, :created_at, :updated_at
json.url film_url(film, format: :json)
