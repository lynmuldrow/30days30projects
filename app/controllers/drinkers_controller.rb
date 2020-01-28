class DrinkersController < ApplicationController

    require 'faker'

    def index
        @drinkers = Drinker.all
    end

    def show
        @drinker = Drinker.find(params[:id])
    end

    def new
        @drinker = Drinker.new   
    end

    def create
        @drinker = Drinker.create(drinker_params)
        redirect_to drinkers_path(@drinker)
    end

    def edit
        @drinker = Drinker.find(params[:id])
    end

    def update
        @drinker = Drinker.find(params[:id])
        @drinker.update(drinker_params)

        redirect_to @drinker
    end

    def destroy
        @drinker = Drinker.find(params[:id])
        @drinker.destroy

        redirect_to drinkers_path
    end

    private

    def drinker_params
        params.require(:drinker).permit(:name, :goal)
    end
end
