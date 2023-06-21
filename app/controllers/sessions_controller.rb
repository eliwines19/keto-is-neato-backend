class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to "/recipes/home"
        else
            flash[:message] = "Incorrect login information, please try again."
            redirect_to "/login"
        end
    end

    def destroy
        session.clear
        redirect_to "/login"
    end

end