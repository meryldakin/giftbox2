class FriendsController < ApplicationController

  def create
  end

  def index
    render json: Friend.all
  end

  def show
    # friend = Friend.find_by(id: params[:id])
    # celebrations = friend.friend_celebrations if friend
    # render json: {friend: friend, celebrations: celebrations}
  end

end
