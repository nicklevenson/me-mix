class CreatePoemMixes < ActiveRecord::Migration[6.1]
  def change
    create_table :poem_mixes do |t|

      t.timestamps
    end
  end
end
