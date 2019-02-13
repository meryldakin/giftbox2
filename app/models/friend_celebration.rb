class FriendCelebration < ApplicationRecord
  belongs_to :celebration
  belongs_to :friend
  has_many :gifts


  def self.group_by_date(date)
    friend_celebrations = FriendCelebration.where(date: date)
    friend_celebrations.pluck(:friend_id)
  end


end
