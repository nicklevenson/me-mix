class CreateMusics < ActiveRecord::Migration[6.1]
  def change
    create_table :musics do |t|
      t.string :data_type
      t.string :title
      t.string :creators
      t.string :url
      t.string :type
      t.timestamps
    end
  end
end
