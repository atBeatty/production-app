class ProducersController < ApplicationController
    
    before_action :redirect_if_not_logged_in
    before_action :set_producer

    def index
        @producers = Producer.all
    end

    def new
        @producer = Producer.new
    end

    def create
        
    end

    def show
    end

    def edit

    end

    def update

    end

    def destroy
    end

    private
    def set_producer
        @producer = Producer.find_by_id(params[:id])
    end


end
