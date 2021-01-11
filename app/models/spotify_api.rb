class SpotifyApi 

  def fetch_music(query)
    # artists = RSpotify::Artist.search(query).sort_by{|artist|artist.followers["total"]}.reverse
    # songs = RSpotify::Track.search(query).sort_by{|song|song.artists.first.followers["total"]}.reverse
    # albums = RSpotify::Album.search(query).sort_by{|album|album.artists.first.followers["total"]}.reverse
    # all = artists + albums + songs
    # all
    results = RSpotify::Base.search(query, "album,artist,track,playlist", limit:5)
    filtered_data = []
    results.each do |result|
      if result.type == 'album'
        filtered_data << {title: result.name,creators: result.artists.collect{|c|c.name}, url: result.uri, type: result.type}
      elsif result.type == 'artist'
        filtered_data << {title: result.name,creators: result.name, url: result.uri, type: result.type}
      elsif result.type == 'track'
        filtered_data << {title: result.name,creators: result.artists.collect{|c|c.name}, url: result.uri, type: result.type}
      elsif result.type == 'playlist'
        filtered_data << {title: result.name,creators: result.owner.display_name, url: result.uri, type: result.type}
      end
    end
    byebug
  end

end
