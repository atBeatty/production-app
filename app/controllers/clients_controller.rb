class ClientsController < ApplicationController
    def index
        @clients = Client.all
    end

    
    def new
        @client = Client.new
    end

    def create
        @client = Client.create(client_params)
        redirect_to @client
    end

    def show

    end

    def edit

    end

    def destroy

    end


    private
    def client_params
        params.require(:client).permit(:name, :contact, :contact_email)
    end

    


end
