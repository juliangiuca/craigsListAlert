class CriteriasController < ApplicationController

	def new
		@criteria = Criteria.new
	end


	def create 
		#@criteria = Criteria.find_or_create_by_url(parama[:url])
		@criteria = current_user.criterias.create(params[:criteria]) #create is a saved method

    respond_to do |format|
      format.html { redirect_to(:action => "index") }
    end

	end

	def index
		@criterias = current_user.criterias.all
	end

	def destroy
		@criteria = current_user.criterias.find(params[:id])
		@criteria.destroy
		redirect_to(:action => "index")
	end

  def create_via_script
		@criteria = current_user.criterias.create(params[:criteria]) #create is a saved method
    render :nothing => true, :status => :ok
  end




end


