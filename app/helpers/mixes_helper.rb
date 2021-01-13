module MixesHelper
  def create_media
    data = eval(params[:media])
    if data[:data_type] == "music"
      
    elsif data[:data_type] == "poem"
      
    elsif data[:data_type] == "movie"
      
    elsif data[:data_type] == "book"
      
    elsif data[:data_type] == "art"
      
    end
  end


end
