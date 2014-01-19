class MainController < ApplicationController
  def index
  end

  def search
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
    @x = @destination.distance_to('Mumbai')
  end
end
