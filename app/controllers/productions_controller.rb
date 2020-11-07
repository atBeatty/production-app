class ProductionsController < ApplicationController
    def index
        @productions = Production.all
    end

    def new

    end

end
