class ClientsController < ApplicationController
    def index
        @clients = Client.all 
        render json: @clients
    end 

    def new
    end 

    def create
    end 

    def show
    end 

    def update
    end

    def destroy
    end 

    def client_params
        params.require(:client).permit(:business_name)
    end
end
