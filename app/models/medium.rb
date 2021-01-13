class Medium < ApplicationRecord
  has_many :mix_mediums
  has_many :mixes, through: :mix_mediums
end
