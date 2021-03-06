class SessionsController < ApplicationController

#	def create
#		if user = User.authenticate(params[:username], params[:password])
#			session[:user_id] = user.id
#			redirect_to loggedinseatings_path 
#		else
#			flash.now[:alert] = "Invalid login/password combination"
#			render :action => 'new'
#		end
#	end
#	
#	def destroy
#		reset_session
#		redirect_to root_path :notice => "You successfully logged out"
#	end
#end


	def create
		if user = UsersAccess.authenticate(params[:username], params[:password])
			session[:user_id] = user.id
			redirect_to loggedinseatings_path 
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
