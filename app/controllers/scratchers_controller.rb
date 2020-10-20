class ScratchersController < ApplicationController

    def index
        render json: Scratcher.all
    end

    def create 
        scratcher = Scratcher.create(scratcher_params)
        render json: scratcher
    end

    def show 
        scratcher = Scratcher.find(params[:id])
        render json: scratcher
    end

    def update 
        scratcher = Scratcher.find(params[:id])
        scratcher.update(scratcher_params)
        render json: scratcher
    end

    def destroy
        Scratcher.find(params[:id]).destroy
        render json: {message: "item deleted"}
    end

    private 

    def scratcher_params 
        
        params.permit(:name, :description, :price, size: [])
    end
    
end
