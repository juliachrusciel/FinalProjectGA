class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user = current_user
  end

  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    redirect_to '/'
  end

  def update
    user = User.find(params[:id])
    User.update!(user_params)
    redirect_to '/profile'
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    User.destroy(params[:id])
    redirect_to '/admin'
  end


  def log_user_in
    # @user = current_user
    puts params
    @loginuser = User.find(params[:username])

    username = params[:username].to_s
    password = params[:password].to_s
    @user.username = username
    @user.password = password
    redirect_to "/profile"
  end

  def user_signup
    username = params[:username].to_s
    password = params[:password].to_s
    email = params[:email].to_s
    User.new(params)
    redirect_to "/login"
  end

  # def user_login
  #
  # end
  #
  # def user_signup
  #
  # end


  def profile
    authenticate!
    @user = current_user
    @newuser = User.new
    # @edituser = User.find
  end

  def update_profile
    authenticate!
    @user = current_user
    puts params
    username = params[:username].to_s
    password = params[:password].to_s
    email = params[:email].to_s
    @user.username = username
    @user.password = password
    @user.email = email
    @user.save!
  end

  private
  def users_params
    params.require(:vocab).permit( :username, :password, :email, :first_name, :surname, :nationality, :first_language, :second_language, :third_language, :fourth_language)
  end
  ###sessions, creating users, passwords
  ###rails g session controller

end
