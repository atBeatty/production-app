class ProductionsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :set_production, only: [:edit, :update, :show, :destroy]
    
    
    def index
        if params[:producer_id]
            @productions = Producer.find(params[:producer_id]).productions
        elsif params[:filter] == "Significant Contracts"
            @productions = Production.significant_contracts
            render '/productions/index'
        else params[:filter] == ""
            @productions = current_user.productions
        end
    end

    def new
        @producers = Producer.all
        @production = Production.new
    end

    def show
    end

    def create
        production = Production.new(production_params)
        production.user_id = current_user.id
        production.client_name = params[:production][:client_name]

        if production.client_name == ""
            redirect_to new_production_path
        elsif production.save
            redirect_to production_path(production)
        else
            render 'new'
        end
    end

    def edit
        @producers = Producer.all
    end
 
    def update
        @production.update(production_params)
        redirect_to productions_path
    end

    def destroy
        @production.destroy
        redirect_to productions_path
    end

    private
    def set_production
        @production ||= Production.find_by_id(params[:id])
    end

    def production_params
        params.require(:production).permit(:title, :contract, :user_id, :producer, :client_name, :producer_id, :client_id)
    end




end
