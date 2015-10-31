json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :isbn, :publisher, :year, :photo
  json.url book_url(book, format: :json)
end
