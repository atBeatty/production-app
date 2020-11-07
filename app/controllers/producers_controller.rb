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

    end

    def edit

    end

    def update

    end

    def destroy
    end




end
