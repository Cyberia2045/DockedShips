class UsersController < ApplicationController

def index
    if !current_user
  		redirect_to "/users/sign_in"
  	end

  	@boats = Boat.all

  end




end
