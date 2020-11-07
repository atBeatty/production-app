class ProductionsController < ApplicationController
    def index
        @productions = Production.all
    end

    def new
        @production = Production.new
    end

    def show
        set_production
    end

    def create
        binding.pry
    end

    def edit
        @production = Production.find_by_id(params[:id])
    end

    def update
        p = Production.find(params[:id])

        binding.pry
        p.update(title: params[:production][:title])
        binding.pry
        redirect_to productions_path

    end


    private
    def set_production
        @production = Production.find_by_id(params[:id])
    end

    def production_params
        params.require(:production).permit(:title, :contract)
    end




end
