class CreateMusicNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :music_notes do |t|

      t.timestamps
    end
  end
end
