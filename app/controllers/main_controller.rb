class MainController < ApplicationController
  def index
  end

  def search
  end

  def results
  	@destination = params[:user_destination]
  	@location = Geocoder.search("1 Twins Way, Minneapolis")
  	if not Geocoder.search("1 Twins Way, Minneapolis").blank?
  		@test = 'Success'
  	else
  		@test = 'Failed'
  	end
  end
end
