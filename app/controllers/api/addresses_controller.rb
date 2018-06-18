class Api::AddressesController < ApplicationController
  before_action :set_location
  before_action :set_address, except: [:index, :create]

  def index
    addresses = Location.addresses
    render json: addresses
  end

  def show
    render json: @address
  end

  def create
    address = Location.addresses.new(address_params)
    if addresses.save
      render json: address
    else
      render json: address.errors, staus: 422
    end
  end

  def update
    if @address.update(address_params)
      render json: @address
    else
      render json: @address.errors, status: 422
    end
  end

  def destroy
    @address.destroy
  end

  private
    def set_location
      @location = Location.find(params[:location_id])
    end

    def set_address
      @address = Address.find(params[:id])
    end

    def address_params
      params.require(:address).permit(:street, :state, :city, :zip)
    end
end
