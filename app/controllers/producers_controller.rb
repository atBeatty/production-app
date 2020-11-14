class ProducersController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :set_producer, only: [:show, :edit, :update, :destroy]
    

    def index
        @producers = Producer.all
    end

    def new
        @producer = Producer.new
    end

    def create
        producer = Producer.new(producer_params)
        if producer.valid? 
            producer.save
            redirect_to producer_path(producer)
        else
            flash[:errors]= producer.errors.messages[:name]
            redirect_to new_producer_path
        end
    end

    def update
        Producer.find(params[:id]).update(producer_params)
        redirect_to producers_path
    end

    def destroy
        @producer.destroy
        redirect_to producers_path
    end

    private
    def producer_params
        params.require(:producer).permit(:name, :rate)
    end
    def set_producer
        @producer ||= Producer.find_by_id(params[:id])
    end
end
