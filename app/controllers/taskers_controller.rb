class TaskersController < ApplicationController
    def index
        @taskers = Tasker.all
    end

    def create
        @tasker = Tasker.new(tasker_params)
        @tasker.save
    end

    def show
         @tasker = Tasker.find(params[:id])
    end

    private 
    def tasker_params
        params.require(:tasker).permit(:username, :user_id)
    end
end
