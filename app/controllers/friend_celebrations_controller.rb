class FriendCelebrationsController < ApplicationController

  def create
  end

  def index
  end

  def show
    friend_celebration = FriendCelebration.find_by(id: params[:id])
    display_celebration = {
      friend_celebration: {
        celebration_name: friend_celebration.celebration.name,
        friend: {
          first_name: friend_celebration.friend.first_name,
          last_name: friend_celebration.friend.last_name,
          id: friend_celebration.friend.id,
        },
        date: friend_celebration.date,
        gifts: friend_celebration.gifts
      }
    }
    gifts = friend_celebration.gifts
    render json: display_celebration
  end

end
