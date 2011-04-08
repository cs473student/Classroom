class SessionsController < ApplicationController

	def create
		if user = Users.authenticate(params[:username], params[:password])
			session[:user_id] = user.id
			redirect_to loginseating_path 
		else
			flash.now[:alert] = "Invalid login/password combination"
			render :action => 'new'
		end
	end
	
	def destroy
		reset_session
		redirect_to root_path :notice => "You successfully logged out"
	end
end
