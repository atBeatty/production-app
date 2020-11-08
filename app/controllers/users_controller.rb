class UsersController < ApplicationController
before_action :redirect_if_logged_in

    def new
        @user = User.new
    end
    
    def self.create_with_omniauth(auth)
        create! do |user|
          user.provider = auth["provider"]
          user.uid = auth["uid"]
          user.name = auth["info"]["name"]
        end
      end

    def create
        user = User.create(user_params)
        session[:user_id] = user.id
        redirect_to '/'
    end
    
    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end


    
end
 
    
  