class BoatsController < ApplicationController
  def new
@boat = Boat.new
  end


 def create
	   boat = Boat.new
	   boat.name = boat_params[:name]
	  if boat.save
	  	redirect_to '/'
	  else

	  end


	  
	end





private
	    

	    def boat_params
	      params.require(:boat).permit( :name)
	    end






end
