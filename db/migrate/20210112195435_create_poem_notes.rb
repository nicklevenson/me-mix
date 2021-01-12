class CreatePoemNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :poem_notes do |t|

      t.timestamps
    end
  end
end
