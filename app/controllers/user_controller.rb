class UserController < ApplicationController
    def index
       @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        @user.save
        redirect_to root_path
    end
    
    private
    def user_params
      params.require(:user).permit(:name, :role)
    end
end
