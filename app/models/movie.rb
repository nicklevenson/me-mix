class Movie < ApplicationRecord
  has_many :movie_notes
  has_many :movie_mixes
  has_many :mixes, through: :movie_mixes
  has_many :mixes, through: :movie_notes
end
