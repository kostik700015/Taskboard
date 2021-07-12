class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new 
    @client = Client.find_by(user_id: current_user.id)
    @task = @client.tasks.new(params[:task])
  end

  def create
    byebug
    @client = Client.find_by(user_id: current_user.id)
    @task = @client.tasks.new(task_params)
    # @task = Task.new(task_params)
    @task.save
  end

  def show
    # byebug
    @task = Task.find(params[:id])
    @tasker = Tasker.find_by(user_id: current_user.id)
    @client = Client.find_by(user_id: current_user.id)
    # @offer = @task.offers.new()
  end

  private 
  def task_params
    params.require(:task).permit(:title, :description, :rate)
  end
  # def offer_params
  #   params.require(:offer).permit(:rate, :deadline, :message)
  # end
end
