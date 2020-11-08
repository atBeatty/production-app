class ProductionsController < ApplicationController
    before_action :redirect_if_not_logged_in
    
    def index
        if params[:producer_id]
            @productions = Producer.find(params[:producer_id]).productions
        else
            @productions = current_user.productions
        end
    end


    def new
        @producers = Producer.all
        @client = Client.new
        @production = Production.new
    end

    def show
        set_production
    end

    def create
        @production = Production.new(production_params)
        @production.user_id = current_user.id
        if @production.save
        redirect_to productions_path
        else
            render 'new'
        end
    end

    def edit
        set_production
        @producers = Producer.all
    end
 
    def update
        set_production
        @production.update(production_params)
        redirect_to productions_path
    end

    def destroy
        set_production
        @production.destroy
        redirect_to productions_path
    end



    private
    def set_production
        @production = Production.find_by_id(params[:id])
    end

    def production_params
        params.require(:production).permit(:title, :contract, :user_id, :producer, :producer_id, :client_id)
    end




end
