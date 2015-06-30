class HisarUstuBebeksController < ApplicationController

  def index
    @newuser = User.new
    @user = current_user
  end

  def create
    @hisar_ustu_bebek = Hisar_ustu_bebek.create(hisar_ustu_bebek_params)
    redirect_to '/admin'
  end

  def show
    @user = User.new
    @user = current_user
    #Stop
    @hisar_ustu_bebek = Hisar_ustu_bebek.find_by(params[:id])

  end

  def update
    @hisar_ustu_bebek = Hisar_ustu_bebek.find_by(params[:id])
    Hisar_ustu_bebek.update(hisar_ustu_bebek_params)
  end

  def destroy
    @hisar_ustu_bebek =Hisar_ustu_bebek.destroy(params[:id])
    redirect_to "/admin"
  end

  private
  def hisar_ustu_bebek_params
    params.require(:hisar_ustu_bebek).permit(:latitude, :longitude, :place_name, :address, :phone_number, :email, :place_type, :description, :keyword, :question, :review, :origin_date)
  end

end
