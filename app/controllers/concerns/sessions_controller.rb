class SessionsController < ApplicationController

  def create
      if params[:name].nil? || params[:name].empty?
        redirect_to login_path
      elsif params[:name]
        session[:name] = params[:name]
        redirect_to root_path
      end

   end

   def destroy
     session.destroy if current_user
         redirect_to login_path
   end

end
