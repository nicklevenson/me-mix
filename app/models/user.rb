class User < ApplicationRecord
  has_many :mixes
  has_many :comments
  has_many :likes
  has_many :follows
  has_many :mixes, through: :likes
  has_many :mixes, through: :comments
  has_many :users, through: :follows

end
