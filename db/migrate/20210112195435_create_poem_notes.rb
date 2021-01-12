class CreatePoemNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :poem_notes do |t|
      t.text :content
      t.integer :mix_id
      t.integer :poem_id
      t.timestamps
    end
  end
end
