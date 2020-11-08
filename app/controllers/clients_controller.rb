class ClientsController < ApplicationController
    before_action :set_client, only: [:show, :edit, :destroy]
    
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
        @client.delete
    end


    private
    def client_params
        params.require(:client).permit(:name, :contact, :contact_email)
    end

    def set_client
        @client = Client.find_by_id(params[:id])
    end

    


end
