class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	before_action :authenticate_user!

	layout -> { params[:controller].include?("devise") ? "logged_out" : "application" }
	
	# See after_sign_in_path_for
	#def after_sign_in_path_for(resource)
	#end
end
