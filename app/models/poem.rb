class Poem < ApplicationRecord
  has_many :poem_notes
  has_many :poem_mixes
  has_many :mixes, through: :poem_mixes
  has_many :mixes, through: :poem_notes
end
