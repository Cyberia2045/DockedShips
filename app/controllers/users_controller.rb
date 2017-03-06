class UsersController < ApplicationController

def index
    if !current_user
  		redirect_to "/users/sign_in"
  	else
  	@boats = Boat.all
  end

  end
end
