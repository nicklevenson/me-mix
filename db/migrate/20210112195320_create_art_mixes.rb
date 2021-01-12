class CreateArtMixes < ActiveRecord::Migration[6.1]
  def change
    create_table :art_mixes do |t|
      t.integer :mix_id
      t.integer :art_id
      t.timestamps
    end
  end
end
