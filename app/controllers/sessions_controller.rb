class SessionsController < ApplicationController
    
     
    
    
    def login
        @owner = Owner.new
    end

    def create
        @owner = Owner.find_by(email: params[:email])
        if @owner.authenticate(params[:password])
            session[:owner_id] = @owner.id
            redirect_to '/'
        else
            redirect_to '/signup'
        end
    end

    def destroy
        session.destroy
        redirect_to '/'
    end

   
end
