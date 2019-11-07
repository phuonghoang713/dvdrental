module FilmsHelper
  require 'digest/md5'

  def film_image(film)
    color = Digest::MD5.hexdigest(film.title)[0..5]
    "https://dummyimage.com/300x300/#{color}/ffffff.png&text=#{film.title.gsub(' ', '+')}"
  end
end
