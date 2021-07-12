class OffersController < ApplicationController
  def create 
    @task = Task.find(params[:task_id])
    @offer = @task.offers.new()
  end

  def create  
    byebug     
    @task = Task.find(params[:task_id])    
    @tasker = Tasker.find_by(user_id: current_user.id)
    @client = Client.find_by(user_id: current_user.id)
    @offer = @task.offers.new(rate: params[:rate], deadline: params[:deadline], message: params[:message], tasker_id: @tasker.id)

    @offer.save
    redirect_to task_path(@task)
  end
  # def edit 
  #   @offer = Offer.find(params[:id])
  # end
  # def update
  #   @offer = Offer.find(params[:id])
  #   @offer.update(offer_params)
  #   redirect_to @task
  # end
  private
  def offer_params
    params.require(:offer).permit(:rate, :deadline, :message, :tasker_id)
  end
end
