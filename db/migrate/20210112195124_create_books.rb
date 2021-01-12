class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :data_type
      t.string :title
      t.string :creators
      t.string :description
      t.string :image
      t.string :url
      t.timestamps
    end
  end
end
