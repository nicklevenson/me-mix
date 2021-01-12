class CreateBookNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :book_notes do |t|
      t.text :content
      t.integer :mix_id
      t.integer :book_id
      t.timestamps
    end
  end
end
