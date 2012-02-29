class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  	def after_sign_in_path_for(resource)
  		stored_location_for(resource) || dashboard_path
  		# vs. routes.rb , :as => :user_root #redirect to dashboard after login, default root for users
		end
end
