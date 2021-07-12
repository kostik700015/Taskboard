class TaskersController < ApplicationController
    def index
      @taskers = Tasker.all
    end

    def create
      byebug
      @user = current_user
      @user.update(role: params[:role])
      @tasker = Tasker.new(tasker_params)
      # @tasker = Tasker.new(username: params[:username], user_id: params[:user_id])
      @tasker.skills.replace(params[:skills])
      if @tasker.save
        redirect_to tasks_path
      else
        redirect_to root_path, notice: 'Try again.'
      end
    end

    def show
      @tasker = Tasker.find(params[:id])
    end

    private 
    def tasker_params
      params.permit(:username, :user_id)
      # params.require(:tasker).permit(:username, :user_id)
    end
end
