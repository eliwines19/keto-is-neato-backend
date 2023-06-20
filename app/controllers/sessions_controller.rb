class SessionsController < ApplicationController

    def home
        @user = current_user
    end

    def create
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to api_v1_recipes_url
        else
            flash[:message] = "Incorrect login information, please try again."
            redirect_to "/login"
        end
    end

    def destroy
        session.clear
        # need to redirect to login page
    end

end