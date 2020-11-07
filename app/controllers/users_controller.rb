class UsersController < ApplicationController


    def new
        @user = User.new
    end

    def create
        user = User.find_by(params[:email])
        @user = User.create(user_params)
        session[:user_id] = @user.id
        redirect_to productions_path
    end
    
    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end


    
end
