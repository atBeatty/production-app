class SessionsController < ApplicationController
    # before_action :redirect_if_logged_in
    
    def login
        @user = User.new
    end

    def create
        binding.pry
        @user = User.find_by(email: params[:email])
        session[:user_id] = @user.id
        redirect_to '/'
    end

    def omniauth
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
            u.name = auth[:info][:nickname]
            u.email = auth[:info][:email]
            u.password = SecureRandom.hex(16)
        end

        session[:user_id] = @user.id
        render 'welcome/home'
    end
    
    def destroy
        session.destroy
        redirect_to '/login', :notice => "Signed out!"
    end

    private
    # def session_params
    #     params.require(:session).require(:email, :password)
    # end

    def auth
        request.env['omniauth.auth']
    end
end
