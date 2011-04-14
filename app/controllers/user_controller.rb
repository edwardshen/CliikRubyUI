class UserController < ApplicationController
    before_filter :authenticate_user!


    def login
    end

    def loggedin
        @sid = session[:id]
    end

    def get
    end

    def create
        @user = User.new
        @user.name = params[:name]
        @user.save!
        session[:id] = @user.id
        redirect_to :controller => :user, :action => :loggedin
    end

    def authen
        @user = User.find_by_name(params[:name])
        if @user
            session[:id] = @user.id
            redirect_to :controller => :user, :action => :loggedin
        else
            redirect_to :controller => :user, :action => :login
        end
    end

    def logout
         reset_session
         redirect_to :controller => :user, :action => :login
    end
end
