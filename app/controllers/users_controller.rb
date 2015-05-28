class UsersController < ApplicationController

  def index
    @user = User.new
    @user = current_user
  end

  def home
  end

end
