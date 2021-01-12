class CreateArtNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :art_notes do |t|
      t.text :content
      t.integer :mix_id
      t.integer :art_id
      t.timestamps
    end
  end
end
