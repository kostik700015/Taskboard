class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new 
    @client = Client.find_by(user_id: current_user.id)
    @task = @client.tasks.new(params[:task])
  end

  def create
    #byebug
    @client = Client.find_by(user_id: current_user.id)
    @task = @client.tasks.new(task_params)
    # @task = Task.new(task_params)
    if @task.save
      flash.notice = "The task was created successfully."
      redirect_to task_path(@task)
    else 
      flash.now.alert = @task.errors.full_messages.to_sentence
    end

  end

  def show
    # byebug
    @task = Task.find(params[:id])
    @offer = Offer.find_by(task_id: @task.id)
    if @offer
      @tasker = Tasker.find(@offer.tasker_id)
    end
    @client = Client.find(@task.client_tasker_id)
    # @offer = @task.offers.new()
  end

  private 
  def task_params
    params.require(:task).permit(:title, :description, :deadline, :rate)
  end
  # def offer_params
  #   params.require(:offer).permit(:rate, :deadline, :message)
  # end
end
