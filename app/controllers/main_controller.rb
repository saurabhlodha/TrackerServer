class MainController < ApplicationController
  def index
  end

  def search
  end

  def input
    longitude = params[:longitude]
    latitude = params[:latitude]
    uid = params[:uid]
    @ambulance = Ambulance.find_by_uid(uid)
    @ambulance.longitude = longitude
    @ambulance.latitude = latitude
    @ambulance.save!
  end

  def results
    @destination = Destination.find_by_uid(1)
    if @destination.blank?
      @destination = Destination.new
      @destination.uid = 1
    end
  	@destination.address = params[:user_destination]
    @destination.save!
  	@location = Ambulance.all
  end
end
