class Book < ApplicationRecord
  has_many :authors
  has_many :genres
  belongs_to :library

  has_one_attached :image
end
