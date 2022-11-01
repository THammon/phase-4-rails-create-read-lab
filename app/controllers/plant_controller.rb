class PlantController < ApplicationController
    def index
        plant = Plant.All
        render json: plant
    end

    def show
        plant = Plant.find_by(id: params[:id])
        if plant
            render json: plant
        else
            render json {error: "Plant not found"}, status: :not_found
        end
    end

    def create

    end

end
