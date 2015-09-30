class Book
  include Mongoid::Document

  belongs_to_many :bookshelf

  field :title, type: String
  field :author, type: String
  field :genre, type: String
  field :year, type: String
end
