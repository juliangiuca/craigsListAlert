class ApplicationController < ActionController::Base
	protect_from_forgery

	def stored_location_for(resource)
		nil
	end

	def after_sign_in_path_for(resource)
		criterias_path
	end

	def after_sign_up_path_for(resource)
		bookmarklet_path
	end
	
end
