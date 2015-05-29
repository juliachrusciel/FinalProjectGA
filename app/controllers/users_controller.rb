class UsersController < ApplicationController

  def index
    @user = User.new
    @user = current_user
  end

end
