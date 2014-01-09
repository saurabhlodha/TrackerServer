class MainController < ApplicationController
  def index
  end

  def search
  end

  def results
  	@destination = params[:user_destination]
  	@location = Ambulance.all
    @main = Ambulance.find_by_uid(1)
    @x = @main.distance_to('Mumbai')
  	if not Geocoder.search("1 Twins Way, Minneapolis").blank?
  		@test = 'Success'
  	else
  		@test = 'Failed'
  	end
  end
end
