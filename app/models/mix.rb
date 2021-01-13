class Mix < ApplicationRecord
  belongs_to :user

  has_many :mix_medias
  has_many :medias, through: :mix_medias

  has_many :likes
  has_many :comments

  

end
