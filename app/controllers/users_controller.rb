class UsersController < ApplicationController
  def index
    @users= User.all
  end

  def show
    #byebug
    @user = User.find(current_user.id)
    #temporary users
    if client = Client.find_by(user_id: @user.id)
      @user = client
    elsif tasker = Tasker.find_by(user_id: @user.id)
      @user = tasker
    end
  end
end
