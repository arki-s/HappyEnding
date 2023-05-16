class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @user = current_user
    @service = Service.new(service_params)
    if @service.save
      redirect_to service_path(@service)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def service_params
    params.require(:service).permit(:price, :description, :title, :user_id, :photo)
  end
end
