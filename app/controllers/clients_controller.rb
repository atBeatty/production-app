class ClientsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :set_client, only: [:show, :edit, :update, :destroy]
    
    def index
        if params[:filter] == "Alphabetical"
            @clients = Client.alphabetical
        else
            @clients = Client.all
        end
    end
    
    def new
        @client = Client.new
        
    end

    def create
        @client = Client.create(client_params)
        redirect_to @client
    end

    def update
        if @client
            @client.update(client_params)
            redirect_to client_path(@client)
        else
            render "edit"
        end
    end

    def destroy
        @client.destroy
        redirect_to clients_path
    end

    private
    def client_params
        params.require(:client).permit(:name, :contact, :contact_email)
    end

    def set_client
        @client ||= Client.find_by_id(params[:id])
    end
end
