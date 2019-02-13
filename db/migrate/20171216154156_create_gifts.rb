class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :source
      t.integer :friend_celebration_id 
      t.timestamps
    end
  end
end
