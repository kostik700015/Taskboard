class UsersController < ApplicationController
    def index
        @users= User.all
    end

    def show
        @user = User.find(current_user.id)
        #temporary users
        if client = Client.find_by(user_id: @user.id)
            @user = client
        else
            @user = Tasker.find_by(user_id: @user.id)
        end
    end
end
