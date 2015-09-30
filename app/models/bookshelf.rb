class Bookshelf
  include Mongoid::Document

  belongs_to :user
  has_and_belongs_to_many :book


  field :title, type: String
end
