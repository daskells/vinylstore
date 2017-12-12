class UserController < ApplicationController
    def login
    end

    def login
    session[:login] = 1
    session[:cart] = nil
    flash[:notice] = "Admin login successful!"
    redirect_to :controller => :items
    end

    def logout
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = "You have been successfully logged out!"
    redirect_to :controller => :items 
    end
end
    
