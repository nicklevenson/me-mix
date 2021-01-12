module WelcomeHelper

  def filter 
    if params[:query]
      get_all_results
    end
  end
  
  def get_all_results
      q = params[:query]
      @songs = SpotifyApi.new.fetch_music(q)
      @poems = PoemApi.new.scrape_poems(q)
      @movies = MovieApi.new.fetch_movies(q)
      @books = GoogleApi.new.fetch_books(q)
      @art = ArtApi.new.fetch_art(q)
      results = @songs + @poems + @movies + @books + @art
      results
  end


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
