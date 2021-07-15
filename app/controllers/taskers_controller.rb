class TaskersController < ApplicationController
    def index
      @taskers = Tasker.all
    end

    def create
      byebug
      @user = current_user
      @tasker = @user.taskers.new(tasker_params)
      @tasker.skills.replace(params[:skills])
      if @tasker.save
        @user.update(role: params[:role])
        flash.notice = "The tasker was created successfully."
        redirect_to tasks_path
      else
        redirect_to root_path
      end
    end

    def show
      if Tasker.find_by(id: params[:id])
        @tasker = Tasker.find(params[:id])
      else 
        flash.notice = "Tasker is not found."
      end
    end

    private 
    def tasker_params
      params.permit(:username, :user_id, :about, :score, :skills)
      # params.require(:tasker).permit(:username, :user_id)
    end

end
