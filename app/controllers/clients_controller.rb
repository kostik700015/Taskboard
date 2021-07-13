class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def create
    # byebug
    @user = current_user
    @user.update(role: params[:role])
    @client = Client.new(client_params)
    # @client = Client.new(username: params[:username], user_id: params[:user_id])
    if @client.save
      redirect_to tasks_path
    else
      redirect_to root_path, notice: 'Try again.'
    end
  end

  def show
    #byebug
    @client = Client.find(params[:id])
  end

  private 
  def client_params
    params.permit(:username, :user_id)
    # params.require(:client).permit(:username, :user_id)
  end
end
