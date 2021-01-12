class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.string :data_type
      t.string :title
      t.string :creator
      t.string :date
      t.string :image
      t.string :url
      t.timestamps
    end
  end
end
