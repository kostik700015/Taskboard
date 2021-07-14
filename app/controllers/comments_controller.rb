class CommentsController < ApplicationController
  before_action :set_offer
  
  def create   
    #byebug      
    @comment = @offer.comments.new(comment_params)  
    @comment.save
    redirect_to task_path(params[:task_id])
  end

  private
  def comment_params
    params.permit(:name, :content)
      #params.require(:comment).permit(:name, :content)
  end
  def set_offer
      @offer = Offer.find(params[:offer_id])
  end
end

