module MixesHelper
  def create_media(mix)
    data = eval(params[:media])
    if data[:data_type] == "music"
      music = Music.find_or_create_by(data)
      mix.musics << music unless mix.musics.include?(music)
      
      byebug
    elsif data[:data_type] == "poem"
      
    elsif data[:data_type] == "movie"
      
    elsif data[:data_type] == "book"
      
    elsif data[:data_type] == "art"
      
    end
  end


end
