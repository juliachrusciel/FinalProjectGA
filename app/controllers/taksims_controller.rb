class TaksimsController < ApplicationController

  def index
    @newuser = User.new
    @user = current_user
  end

  def create
    @taksim = Taksim.create(taksim_params)
    redirect_to '/admin'
  end

  def show
    @user = User.new
    @user = current_user
    #Stop
    @taksim = Taksim.find_by(params[:id])

  end

  def update
    @taksim = Taksim.find_by(params[:id])
    Taksim.update(taksim_params)
  end

  def destroy
    @taksim =Taksim.destroy(params[:id])
    redirect_to "/admin"
  end

  private
  def taksim_params
    params.require(:taksim).permit(:latitude, :longitude, :place_name, :address, :phone_number, :email, :place_type, :description, :keyword, :question, :review, :origin_date)
  end

end
