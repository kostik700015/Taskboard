class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def create
        @task = Task.new(task_params)
        @task.save
    end

    def show
        # byebug
        @task = Task.find(params[:id])
        @tasker = Tasker.find(current_user.id)
        @offer = @task.offers.new()
    end

    private 
    def task_params
        params.require(:task).permit(:title, :description, :rate)
    end
    # def offer_params
    #     params.require(:offer).permit(:rate, :deadline, :message)
    # end
end
