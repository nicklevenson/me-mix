class CreateMedia < ActiveRecord::Migration[6.1]
  def change
    create_table :media do |t|
      t.string :data_type
      t.string :title
      t.string :creators
      t.string :date 
      t.string :image
      t.string :url
      t.string :description
      t.timestamps
    end
  end
end
