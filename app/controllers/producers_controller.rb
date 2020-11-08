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
        producer = Producer.create(producer_params)
        redirect_to producer_path(producer)
    end

    def show
    end

    def edit
    end

    def update
        Producer.find(params[:id]).update(producer_params)
    end

    def destroy
    end

    private
    def producer_params
        params.require(:producer).permit(:name, :rate)
    end
    def set_producer
        @producer = Producer.find_by_id(params[:id])
    end


end
