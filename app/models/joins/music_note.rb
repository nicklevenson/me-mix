class MusicNote < ApplicationRecord
  belongs_to :mix
  belongs_to :music
end
