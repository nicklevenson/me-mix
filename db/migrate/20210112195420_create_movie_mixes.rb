class CreateMovieMixes < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_mixes do |t|
      t.integer :mix_id
      t.integer :movie_id
      t.timestamps
    end
  end
end
