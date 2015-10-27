class Book
  include Mongoid::Document

  has_and_belongs_to_many :bookshelves

  #title, author, isbn
  field :title, type: String
  field :author, type: String
  field :isbn, type: String

  #publisher and year info
  field :publisher, type: String 
  field :year, type: Integer
  
  #string that hold the URL of a book photo
  field :photo, type: String
end
