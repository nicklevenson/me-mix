class CreateBookMixes < ActiveRecord::Migration[6.1]
  def change
    create_table :book_mixes do |t|

      t.timestamps
    end
  end
end
