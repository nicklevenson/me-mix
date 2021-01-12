class Book < ApplicationRecord
  has_many :book_notes
  has_many :book_mixes
  has_many :mixes, through: :book_mixes
  has_many :mixes, through: :book_notes
end
