module WelcomeHelper

  def filter 
    if params[:query] && params[:filter] == "All"
      get_all_results
    elsif params[:query] && params[:filter] == "Music"
      get_music
    elsif params[:query] && params[:filter] == "Poetry"
      get_poems
    elsif params[:query] && params[:filter] == "Movies/TV"
      get_movies
    elsif params[:query] && params[:filter] == "Books"
      get_books
    elsif params[:query] && params[:filter] == "Artwork"
      get_art
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
    SpotifyApi.new.fetch_music(params[:query])
  end

  def get_poems
    PoemApi.new.scrape_poems(params[:query])
  end

  def get_movies
    MovieApi.new.fetch_movies(params[:query])
  end

  def get_books
    GoogleApi.new.fetch_books(params[:query])
  end

  def get_art
    ArtApi.new.fetch_art(params[:query])
  end

  def render_piece(result)
    if result[:data_type] == "music"
      render partial: "musics/music", locals: {music: result}
    elsif result[:data_type] == "poem"
      render partial: "poems/poem", locals: {poem: result}
    elsif result[:data_type] == "movie"
      render partial: "movies/movie", locals: {movie: result}
    elsif result[:data_type] == "book"
      render partial: "books/book", locals: {book: result}
    elsif result[:data_type] == "art"
      render partial: "arts/art", locals: {art: result}
    end
  end
end
