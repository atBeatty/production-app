class SessionsController < ApplicationController
    before_action :redirect_if_logged_in
    
    def login
        @user = User.new
    end

    def create
        auth = request.env["omniauth.auth"]
        user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
        session[:user_id] = user.id
        redirect_to '/', :notice => "Signed in!"
    end
    
    def destroy
    #   session[:user_id] = nil
      session.destroy
      redirect_to '/', :notice => "Signed out!"
    end

    # def create
    #     @user = User.find_by(email: params[:email])
    #     if @user.authenticate(params[:password])
    #         session[:user_id] = @user.id
    #         redirect_to '/'
    #     else
    #         redirect_to '/signup'
    #     end
    # end

    # def destroy
    #     session.destroy
    #     redirect_to '/'
    # end

   
end
