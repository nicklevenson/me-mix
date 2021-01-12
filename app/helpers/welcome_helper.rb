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

  def render_piece(result)
    if result[:data_type] == "music"
      render partial: "song", locals: {music: result}
    elsif result[:data_type] == "poem"
      render partial: "poem", locals: {poem: result}
    elsif result[:data_type] == "movie"
      render partial: "movie", locals: {movie: result}
    elsif result[:data_type] == "book"
      render partial: "book", locals: {book: result}
    elsif result[:data_type] == "art"
      render partial: "art", locals: {art: result}
    end
  end
end
