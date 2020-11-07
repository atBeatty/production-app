class ProductionsController < ApplicationController
    before_action :set_production
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
        @production.update(production_params)
        # p = Production.find(params[:id])
        # p.update(title: params[:production][:title])
        redirect_to productions_path
    end


    private
    def set_production
        @production = Production.find_by_id(params[:id])
    end

    def production_params
        params.require(:production).permit(:title, :contract, :user_id, :producer_id, :client_id)
    end




end
