class CreateMusicMixes < ActiveRecord::Migration[6.1]
  def change
    create_table :music_mixes do |t|
      t.integer :mix_id
      t.integer :music_id
      t.timestamps
    end
  end
end
