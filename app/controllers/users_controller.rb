class UsersController < ApplicationController

  def index
    @user = User.new
    @user = current_user
  end

  # def home
  #   current_user
  #   redirect_to "/"
  # end

end
