class JourniesController < ApplicationController
    def index
        @journies = Journey.all

        render json: @journies
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

end
