class UsersController < ApplicationController
  before_filter :authenticate_user!#, :except => [:some_action_without_auth]
  # Access Current User
#def index
#    @things = current_user.things
#end

	def show
  	@user = User.find(params[:id])
	end
end
