class Art < ApplicationRecord
  has_many :art_notes
  has_many :art_mixes
  has_many :mixes, through: :art_mixes
  has_many :mixes, through: :art_notes
end
