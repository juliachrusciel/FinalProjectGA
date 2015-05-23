class KadikoysController < ApplicationController

    def index
      @newuser = User.new
      @user = current_user
    end

    def create
      @kadikoy = Kadikoy.create(kadikoy_params)
      redirect_to '/admin'
    end

    def show
      @user = User.new
      @user = current_user
      #Stop
      @kadikoy = Kadikoy.find_by(params[:id])

    end

    def update
      @kadikoy = Kadikoy.find_by(params[:id])
      Kadikoy.update(kadikoy_params)
    end

    def destroy
      @kadikoy =Kadikoy.destroy(params[:id])
      redirect_to "/admin"
    end

    private
    def kadikoy_params
      params.require(:kadikoy).permit(:latitude, :longitude,:place_name, :address, :phone_number, :email, :place_type, :description :keyword, :question, :review, :origin_date)
    end

end
