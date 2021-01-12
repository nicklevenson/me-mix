class User < ApplicationRecord
  has_secure_password
  has_many :mixes
  has_many :comments
  has_many :likes
  has_many :mixes, through: :likes
  has_many :mixes, through: :comments
  
  validates :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 7}

end
