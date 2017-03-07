class JobsController < ApplicationController


	def show

		@job = Job.find(params[:id])

	end

	def index

		@jobs = Job.all

	end



	private
	    

	    def job_params
	      params.require(:job).permit( :description, :origin, :destination, :cost, :containers, :status)
	    end


end