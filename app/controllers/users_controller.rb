class UsersController < ApplicationController

  def index
    @user = current_user
  end

  def new
    @user = User.new
    @user = current_user
  end

  def home
      @user = current_user
  end

  # def which_nav_to_render
  #   if current_user
  #   return <%= render :partial => "signed_in_nav" %>
  # else  return  <%= render :partial => "nav" %>
  # end

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

  # def log_user_in
  #   # @user = current_user
  #   puts params
  #   @loginuser = User.find(params[:username])
  #
  #   username = params[:username].to_s
  #   password = params[:password].to_s
  #   @user.username = username
  #   @user.password = password
  #   redirect_to "/profile"
  # end

  def signup
  end

  def user_signup_post
    username = params[:username].to_s
    password = params[:password].to_s
    email = params[:email].to_s
    @user = User.new(user_params)
    @user.save
    redirect_to "/login"
  end

  def profile
    authenticate!
    @user = current_user
    @newuser = User.new
    @edituser = User.find
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
  def user_params
    params.require(:user).permit(:username, :password, :email, :first_name, :surname, :nationality, :first_language, :second_language, :third_language, :fourth_language)
  end
end
