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

    private
    def set_production
        @production = Production.find_by_id(params[:id])
    end



end
