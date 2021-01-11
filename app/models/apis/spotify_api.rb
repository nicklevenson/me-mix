class SpotifyApi

  def fetch_music(query)
    # artists = RSpotify::Artist.search(query).sort_by{|artist|artist.followers["total"]}.reverse
    # songs = RSpotify::Track.search(query).sort_by{|song|song.artists.first.followers["total"]}.reverse
    # albums = RSpotify::Album.search(query).sort_by{|album|album.artists.first.followers["total"]}.reverse
    # all = artists + albums + songs
    # all
    results = RSpotify::Base.search(query, "album,artist,track,playlist", limit:6)
    results
  end

end
