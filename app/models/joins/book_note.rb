class BookNote < ApplicationRecord
  belongs_to :mix
  belongs_to :book
end
