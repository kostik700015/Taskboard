class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy assign_tasker]
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
  
  def assign_tasker
    @offer = Offer.find_by(task_id: @task.id)
    @tasker = Tasker.find(@offer.tasker_id)
    @task.update(tasker_id: @tasker.id, is_assigned: true)
    redirect_to task_path(@task)
    flash.notice = "The task was assigned successfully."
  end

  def show
    # byebug
    # @offer = Offer.find_by(task_id: @task.id)
    # if @offer
    #   @tasker = Tasker.find(@offer.tasker_id)
    # end
    # @client = Client.find(@task.client_tasker_id)

    @offer = Offer.find_by(task_id: @task.id)
    # if @offer
    #   @tasker = Tasker.find(@offer.tasker_id)
    # end
    if current_user.taskers.first
      @tasker = current_user.taskers.first
    elsif @offer
      @tasker = Tasker.find(@offer.tasker_id)
    end
    @client = Client.find(@task.client_tasker_id)
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to @task, notice: "Task was successfully updated."
  end
 
  def destroy
    @task.destroy
    redirect_to tasks_url, notice: "Task was successfully destroyed."
  end


  private 
  def task_params
    params.require(:task).permit(:title, :description, :deadline, :rate)
  end

  def set_task
    @task = Task.find(params[:id])
  end
  # def offer_params
  #   params.require(:offer).permit(:rate, :deadline, :message)
  # end
end
