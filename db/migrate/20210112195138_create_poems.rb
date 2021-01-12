class CreatePoems < ActiveRecord::Migration[6.1]
  def change
    create_table :poems do |t|
      t.string :data_type
      t.string :title
      t.string :creator
      t.string :url
      t.timestamps
    end
  end
end
