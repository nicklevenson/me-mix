class CreatePoemMixes < ActiveRecord::Migration[6.1]
  def change
    create_table :poem_mixes do |t|
      t.integer :mix_id
      t.integer :poem_id
      t.timestamps
    end
  end
end
