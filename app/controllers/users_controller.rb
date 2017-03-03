class UsersController < ApplicationController

	def index
		
	    if !current_user
	  		redirect_to "/users/sign_in"
	  	end


	  	if current_user
	  	@boats = Boat.where(:user_id => current_user.id)
	  	end

	  	

  	end


  	def destroy
		current_user.destroy
	    flash[:success] = "Profile wa successfully deleted"
	    redirect_to root_url
  		
  	end





end
