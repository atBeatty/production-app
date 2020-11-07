class SessionsController < ApplicationController
    
     
    
    
    def login
        @user = User.new
    end

    def create
        @user = User.find_by(email: params[:email])
        if @user.authenticate(params[:password])
            session[:user_id] = @user.id
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
