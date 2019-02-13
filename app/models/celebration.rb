class Celebration < ApplicationRecord
  has_many :friend_celebrations
  has_many :friends, through: :friend_celebrations

end
