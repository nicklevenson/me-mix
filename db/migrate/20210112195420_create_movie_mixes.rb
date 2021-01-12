class CreateMovieMixes < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_mixes do |t|

      t.timestamps
    end
  end
end
