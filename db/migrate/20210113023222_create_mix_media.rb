class CreateMixMedia < ActiveRecord::Migration[6.1]
  def change
    create_table :mix_media do |t|
      t.integer :mix_id 
      t.integer :media_id
      t.timestamps
    end
  end
end
