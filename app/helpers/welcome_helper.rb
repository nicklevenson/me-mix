module WelcomeHelper

  def get_music
    @songs = SpotifyApi.new.fetch_music(params[:query])
  end

  def get_poems
    @poems = PoemApi.new.scrape_poems(params[:query])
  end

  def get_movies
    @movies = MovieApi.new.fetch_movies(params[:query])
  end

  def get_books
    @books = GoogleApi.new.fetch_books(params[:query])
  end

  def get_art
    @art = ArtApi.new.fetch_art(params[:query])
  end
end
