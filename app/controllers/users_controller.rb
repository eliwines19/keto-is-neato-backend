class UsersController < ApplicationController

    skip_before_action :verify_authenticity_token
    protect_from_forgery with: :null_session

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            render json: { user: @user }
        else
            render json: { error: "Not a valid user" }
        end
    end

    def show
        @user = User.find_by(id: params[:id])

        render json: { user: @user }
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end

end