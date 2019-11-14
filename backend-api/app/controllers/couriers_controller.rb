class CouriersController < ApplicationController
    def index
        @couriers = Courier.all

        render json: @couriers
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

    def courier_params
        params.require(:courier).permit(:courier_name, :client_id)
    end
end
