json.array!(@bookshelves) do |bookshelf|
  json.extract! bookshelf, :id, :title
  json.url bookshelf_url(bookshelf, format: :json)
end
