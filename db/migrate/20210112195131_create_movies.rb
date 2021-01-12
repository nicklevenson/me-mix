class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :data_type
      t.string :title
      t.string :year
      t.string :director
      t.string :description
      t.string :image
      t.string :url
      t.timestamps
    end
  end
end
