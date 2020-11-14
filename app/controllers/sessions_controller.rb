class SessionsController < ApplicationController
    # before_action :redirect_if_logged_in
    
    def login
        @user = User.new
    end

    def create
        @user = User.find_by(email: params[:email])
        if @user.nil?
            redirect_to '/signup'
        else
            session[:user_id] = @user.id
            redirect_to '/'
        end
    end
    
    def omniauth
        @user = User.find_or_create_by(uid: auth['uid'], name: auth[:info][:name], email: "adam@adam.com", password_digest: "cool")
        session[:user_id] = @user.id
        redirect_to '/'
    end
    
    def destroy
        session.destroy
        redirect_to '/login', :notice => "Signed out!"
    end

    private
    def session_params
        params.require(:session).require(:email, :password)
    end

    protected 
    def auth
        request.env['omniauth.auth']
    end
end
