class Mix < ApplicationRecord
  belongs_to :user

  has_many :art_mixes
  has_many :music_mixes
  has_many :book_mixes
  has_many :movie_mixes
  has_many :poem_mixes

  has_many :art_notes
  has_many :music_notes
  has_many :book_notes
  has_many :movie_notes
  has_many :poem_notes

  has_many :musics, through: :music_mixes
  has_many :movies, through: :movie_mixes
  has_many :arts, through: :art_mixes
  has_many :poems, through: :poem_mixes
  has_many :books, through: :book_mixes

end
