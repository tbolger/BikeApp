class BikesController < ApplicationController
  def new
  	@bike = Bike.new
  end

  def index
  	@bikes =Bike.all
  end

  def show
  	@bike = Bike.find(params[:id])
  end

  def edit
    @bike = Bike.find(params[:id])
  end
  def create
  	@bike = Bike.new(permit_bike)
  	if @bike.save
  		flash[:success] ="Bike has been created successfully"
  		redirect_to bike_path(@bike)
  	else
  		flash[:error] = @bike.errors.full_messages
  		redirect_to new_bike_path

  	end
  	
  end

  private 
  def permit_bike
  	params.require(:bike).permit(:image,:description,:price,:manufacturer)
  	
  end
end
