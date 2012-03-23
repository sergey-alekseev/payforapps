class ApplicationController < ActionController::Base
  protect_from_forgery
#  check_authorization

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end

  private

  	def after_sign_in_path_for(resource)
	  	if resource.is_a? User
	  		default = dashboard_path
	  	elsif resource.is_a? Admin
	  		default = rails_admin_path
	  	end
  		stored_location_for(resource) || default
  		# vs. routes.rb , :as => :user_root #redirect to dashboard after login, default root for users
		end

end
