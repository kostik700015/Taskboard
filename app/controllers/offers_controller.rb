class OffersController < ApplicationController
    def create       
        @task = Task.find(params[:task_id])    
        @offer = @task.offers.create(offer_params)
        redirect_to @task
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
        params.require(:offer).permit(:rate, :deadline, :message)
    end
end
