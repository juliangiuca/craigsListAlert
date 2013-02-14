class CriteriasController < ApplicationController

	def new
		@criteria = Criteria.new
	end


	def create 
		@criteria = current_user.criterias.create(params[:criteria]) #create is a saved method
		redirect_to(:action => "index")

	end

	def index
		@criterias = current_user.criterias.all
	end

	def destroy
		@criteria = current_user.criterias.find(params[:id])
		@criteria.destroy
		redirect_to(:action => "index")
	end




end


