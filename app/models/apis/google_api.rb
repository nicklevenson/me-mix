class GoogleApi
  def fetch_books(query)
    url = "https://www.googleapis.com/books/v1/volumes?q=#{query}&maxResults=20"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    json = JSON.parse(response.body)["items"]
    books = []

    json.each do |book|
      books << {
                data_type: "book",
                title: book["volumeInfo"]["title"], 
                creators: book["volumeInfo"]["authors"], 
                description:  book["volumeInfo"]["description"],
                image: book["volumeInfo"]["imageLinks"]["thumbnail"],
                url: book["volumeInfo"]["canonicalVolumeLink"]}
    end
    books
 

  end
end
