class Api::FlowersController < ApplicationController
    before_action :set_flower, only:[:show, :update, :destroy]


    def index
        render json: Flower.info
    end

    def show
        render json: @flower
    end

    def create
    flower = Flower.new(flower_params)
        if(flower.save)
            render json: flower
        else
            render json: {errors: flower.errorsfull_messages}, status: 422
        end
    end

    def update
        if(@flower.update(flower_params))
            render json: @flower
        else
            render json: {errors: @flower.errors.full_messages}, status: 422
        end
    end

    def destroy
        render json: @flower.destroy
    end

    private

    def set_flower
        @flower = Flower.find(params[:id])
    end

    def flower_params
        params.require(:flower).permit(:name, :color, :bunch, :price)
    end
end
