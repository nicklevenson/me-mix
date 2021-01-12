class Music < ApplicationRecord
  has_many :music_notes
  has_many :music_mixes
  has_many :mixes, through: :music_mixes
  has_many :mixes, through: :music_notes
end
