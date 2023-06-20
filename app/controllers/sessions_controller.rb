class SessionsControllers < ApplicationController

    def home
        @user = current_user
    end

    def create
        user = User.find_by(name: params[:user][:name])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            # need to redirect to recipes create page
        else
            flash[:message] = "Incorrect login information, please try again."
            # needs to redirect to login page
        end
    end

    def destroy
        session.clear
        # need to redirect to login page
    end

end