class OffersController < ApplicationController
    def create  
        byebug     
        @task = Task.find(params[:task_id])    
        @tasker = Tasker.find(current_user.id)
        tasker_id =@tasker.id
        @offer = @task.offers.new(offer_params)
    
        @offer.save
        redirect_to task_path(@task)
    end
    # def edit 
    #     @offer = Offer.find(params[:id])
    # end
    # def update
    #     @offer = Offer.find(params[:id])
    #     @offer.update(offer_params)
    #     redirect_to @task
    # end
    private
    def offer_params
        params.require(:offer).permit(:rate, :deadline, :message, :tasker_id)
    end
end
