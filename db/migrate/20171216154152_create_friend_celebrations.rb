class CreateFriendCelebrations < ActiveRecord::Migration[5.1]
  def change
    create_table :friend_celebrations do |t|
      t.integer :friend_id
      t.integer :celebration_id
      t.date :date
      t.timestamps
    end
  end
end
