class CreateMusicNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :music_notes do |t|
      t.text :content
      t.integer :mix_id
      t.integer :music_id
      t.timestamps
    end
  end
end
