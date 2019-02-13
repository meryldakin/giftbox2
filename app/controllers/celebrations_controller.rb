class CelebrationsController < ApplicationController
  def create
  end
  def index
    celebrations = Celebration.all
    display_celebrations = celebrations.map do |celebration|
      if celebration.month && celebration.day
        {
          name: celebration.name,
          id: celebration.id,
          date: `#{celebration.month}, #{celebration.day}`,
          friend_count: celebration.friends.count
        }
      else
        {
          name: celebration.name,
          id: celebration.id,
          friend_count: celebration.friends.count
        }
      end
    end
    render json: display_celebrations
  end

  def show
    display_celebration = {
      celebration: {
        name: celebration.name,
        friend_celebrations: friend_celebrations
      }
    }
    render json: display_celebration
  end
end
