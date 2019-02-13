class CreateCelebrations < ActiveRecord::Migration[5.1]
  def change
    create_table :celebrations do |t|
      t.string :name
      t.integer :month
      t.integer :day
      t.timestamps
    end
  end
end
