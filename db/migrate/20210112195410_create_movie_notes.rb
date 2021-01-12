class CreateMovieNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_notes do |t|

      t.timestamps
    end
  end
end
