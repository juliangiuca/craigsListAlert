class ApplicationController < ActionController::Base
	protect_from_forgery
	before_filter :authenticate_user! #Before filters may halt the request cycle. A common before filter is one which requires that a user is logged in for an action to be run. 

end
