class CreateMovieNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_notes do |t|
      t.text :content
      t.integer :mix_id
      t.integer :movie_id
      t.timestamps
    end
  end
end
