class MovieApi

  def fetch_movies(query)
    client = Omdb::Api::Client.new do |config|
      config.api_key = ENV['OMDB_API_KEY']
    end
    results = client.search(query).movies
    movies = []
    results.each do |movie|
      movies << client.find_by_id(movie.imdb_id)
    end
    filtered_data = []
    movies.each do |movie|
      filtered_data << {data_type: "movie",
                        title: movie.title, 
                        year: movie.year, 
                        director: movie.director, 
                        description: movie.plot, 
                        image: movie.poster, 
                        url: "imdb.com/title/#{movie.imdb_id}"}
    end
    filtered_data
  end
end
