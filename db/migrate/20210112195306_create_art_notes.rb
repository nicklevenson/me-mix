class CreateArtNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :art_notes do |t|

      t.timestamps
    end
  end
end
