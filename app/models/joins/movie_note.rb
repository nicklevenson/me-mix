class MovieNote < ApplicationRecord
  belongs_to :mix
  belongs_to :movie
end
