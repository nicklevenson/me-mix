class Mix < ApplicationRecord
  belongs_to :user

  has_many :mix_mediums
  has_many :mediums, through: :mix_mediums

  has_many :likes
  has_many :comments

  

end
