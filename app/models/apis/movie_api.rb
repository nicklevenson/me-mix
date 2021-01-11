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
    movies 

 
    # q1 = query[0]
    # url = "https://v2.sg.media-imdb.com/suggests/#{q1}/#{query}.json"
    # uri = URI.parse(url)
    # response = Net::HTTP.get_response(uri).body
    # response = response.gsub("imdb$#{query}(", "")
    # response = response.gsub(/[)\\]/, "")
    # begin
    #   JSON.parse(response)
    # rescue
    #   results =[]
    # else
    #   result = JSON.parse(response).to_a[2][1]
    #   results = []
    #   result.each do |result|
    #     results << {title: result["l"], year: result["y"], image: result["i"][0]}
    #   end
    #   results
    # end
 
  end
end
