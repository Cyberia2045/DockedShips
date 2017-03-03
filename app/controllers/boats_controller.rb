class BoatsController < ApplicationController
  def new
@boat = Boat.new
  end

 def create
	Boat.create(boat_params)
  	redirect_to '/'
	  end  
	end

private
	def boat_params
	  params.require(:boat).permit( :name, :image)
	end
end
