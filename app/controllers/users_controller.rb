class UsersController < ApplicationController
	before_filter :authenticate, :only => [:edit, :update]
	
	def new
		@user = Users.new
	end

	def create
		@user = Users.new(params[:user])
		if @user.save
			redirect_to seatings_path, :notice => 'User successfully added.'
		end
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		if @user.update_attributes(params[:user])
			redirect_to loginseatings_path, :notice => 'Updated user information successfully.'
		else
			render :action => 'edit'
		end
	end
end
