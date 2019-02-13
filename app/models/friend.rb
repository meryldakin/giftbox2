class Friend < ApplicationRecord
  has_many :friend_celebrations
  has_many :celebrations, through: :friend_celebrations
  has_many :gifts, through: :friend_celebrations

  after_create :create_celebrations


  def create_celebrations
    birthday = FriendCelebration.create(date: nil, friend_id: self.id, celebration_id: 1)
    anytime = FriendCelebration.create(date: self.birthday, friend_id: self.id, celebration_id: 2)
  end

end
