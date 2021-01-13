class Media < ApplicationRecord
  has_many :mix_medias
  has_many :mixes, through: :mix_medias
end
