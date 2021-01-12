class PoemNote < ApplicationRecord
  belongs_to :mix
  belongs_to :poem
end
