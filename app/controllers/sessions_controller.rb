class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
    end
    redirect_to '/'
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  # def log_user_in
  #
  #   puts params
  #   @loginuser = User.find_by(username: params[:username])
  #   if @loginuser && @loginuser.authenticate(params[:password])
  #     # Deal with putting id in session
  #
  #   end
  #
  #   redirect_to "/profile"
  # end


end
