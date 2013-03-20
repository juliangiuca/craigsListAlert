class CriteriasController < ApplicationController

	skip_before_filter :verify_authenticity_token#, :only => :create

	def new
		@criteria = Criteria.new
	end


	def create 
		#@criteria = Criteria.find_or_create_by_url(parama[:url])
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


