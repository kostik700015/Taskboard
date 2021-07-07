class ClientsController < ApplicationController
    def index
        @clients = Client.all
    end

    def create
        @client = Client.new(client_params)
        @client.save
    end

    def show
         @client = Client.find(params[:id])
    end

    private 
    def client_params
        params.require(:client).permit(:username, :user_id)
    end
end
