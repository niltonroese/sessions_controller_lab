class SessionsController < ApplicationController
    def new
    end

    def create
        return redirect_to controller: 'sessions', action: 'new' if !params[:name] || params[:name].empty?
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
        # redirect_to controller: 'sessions', action: 'new'
        # if !params[:name] || params[:name].empty?
        #     redirect_to controller: 'sessions', action: 'new'
        # else
        #     session[:name] = params[:name]
        #     redirect_to root_path
        # end
    end

    def destroy
        session.delete :name
        redirect_to controller: 'sessions', action: 'new'
    end

end