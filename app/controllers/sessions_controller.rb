class SessionsController < ApplicationController

    skip_before_filter :require_user, :only => [:new, :create]

    def new
        if current_user
            redirect_to books_path
            return
        end

        #redirect_to bookshelves_path
    end

    def create
        user = User.find_by(email: params[:session][:email])
        #puts "\nCHECKING UNAME AND PASSWORD\n"
        #puts "\n" + params[:session][:password] + "\n"
        #puts "\n" + user.password + "\n"
        if user && params[:session][:password] == user.password
            session[:user_id] = user.id
            puts "\n\nWelcome\n\n"
            redirect_to bookshelves_path
        else
            #render "new"
            redirect_to "/signup"
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_url
    end

end
