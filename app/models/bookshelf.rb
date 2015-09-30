class Bookshelf
  include Mongoid::Document

  belongs_to :user
  has_many :book


  field :title, type: String
end
