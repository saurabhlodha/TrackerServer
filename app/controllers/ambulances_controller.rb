class AmbulancesController < ApplicationController
  def index
    @ambulances = Ambulance.all
  end

  def show
    @ambulance = Ambulance.find(params[:id])
  end

  def new
    @ambulance = Ambulance.new
  end

  def create
    @ambulance = Ambulance.new(params[:ambulance])
    if @ambulance.save
      redirect_to @ambulance, :notice => "Successfully created ambulance."
    else
      render :action => 'new'
    end
  end

  def edit
    @ambulance = Ambulance.find(params[:id])
  end

  def update
    @ambulance = Ambulance.find(params[:id])
    if @ambulance.update_attributes(params[:ambulance])
      redirect_to @ambulance, :notice  => "Successfully updated ambulance."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @ambulance = Ambulance.find(params[:id])
    @ambulance.destroy
    redirect_to ambulances_url, :notice => "Successfully destroyed ambulance."
  end
end
