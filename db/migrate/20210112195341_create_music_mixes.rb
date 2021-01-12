class CreateMusicMixes < ActiveRecord::Migration[6.1]
  def change
    create_table :music_mixes do |t|

      t.timestamps
    end
  end
end
