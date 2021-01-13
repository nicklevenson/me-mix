module MixesHelper
  def create_media(mix)
    data = eval(params[:media])
    if data[:data_type] == "music"
      music = Music.find_or_create_by(url: data[:url])
      music.update(data)
      mix.musics << music unless mix.musics.include?(music)
      
    elsif data[:data_type] == "poem"
      poem = Poem.find_or_create_by(url: data[:url])
      poem.update(data)
      mix.poems << poem unless mix.poems.include?(poem)
    elsif data[:data_type] == "movie"
      
    elsif data[:data_type] == "book"
      
    elsif data[:data_type] == "art"
      
    end
  end


end
