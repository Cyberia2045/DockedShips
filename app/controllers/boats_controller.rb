class BoatsController < ApplicationController

def new
    @boat = Boat.new
 end

def show
  @boat = Boat.find(params[:id])
end

def create
   @boat = current_user.boats.new(boat_params)

if @boat.save
  flash[:boat_created] = "New boat was successfully logged."
  redirect_to '/'
end
  end

def destroy
    Boat.find(params[:id]).destroy
    flash[:boat_deleted] = "Boat was successfully deleted"
    redirect_to root_url    
 end

def edit
  @boat = Boat.find(params[:id])
end

def update
  @boat = Boat.find(params[:id])
  if @boat.update_attributes(boat_params)
    flash[:boat_updated] = "Boat was successfully updated."
    redirect_to @boat
  else
    render 'edit'
  end
end

private

def boat_params
  params.require(:boat).permit( :name, :total_cont, :avail_cont, :avatar)
end
  end

