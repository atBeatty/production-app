class ProducersController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index
        @producers = Producer.all
    end

    def new
    end

    def create
    end

    def show
        set_producer
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
