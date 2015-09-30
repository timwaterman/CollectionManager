class Book
  include Mongoid::Document

  has_and_belongs_to_many :bookshelf

  field :title, type: String
  field :author, type: String
  field :genre, type: String
  field :year, type: String
end
