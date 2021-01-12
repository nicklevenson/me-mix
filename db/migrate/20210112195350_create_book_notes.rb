class CreateBookNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :book_notes do |t|

      t.timestamps
    end
  end
end
