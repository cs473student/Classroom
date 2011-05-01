class UsersAccessesController < ApplicationController
	before_filter :authenticate, :only => [:edit, :update]

	# GET /users_accesses
  # GET /users_accesses.xml
#  def index
#    @users_accesses = UsersAccess.all

#    respond_to do |format|
#      format.html # index.html.erb
#      format.xml  { render :xml => @users_accesses }
#    end
#  end

  # GET /users_accesses/1
  # GET /users_accesses/1.xml
#  def show
#   @users_access = UsersAccess.find(params[:id])

#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @users_access }
#    end
#  end

  # GET /users_accesses/new
  # GET /users_accesses/new.xml
  def new
    @users_access = UsersAccess.new

    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.xml  { render :xml => @users_access }
    #end
  end

  # GET /users_accesses/1/edit
  def edit
    @users_access = UsersAccess.find(params[:id])
  end

  # POST /users_accesses
  # POST /users_accesses.xml
  def create
    @users_access = UsersAccess.new(params[:users_access])
	
	if @users_access.save
		redirect_to seatings_path, :notice => 'User successfully added.'
	end
  end

#    respond_to do |format|
#      if @users_access.save
#        format.html { redirect_to(@users_access, :notice => 'Users access was successfully created.') }
#        format.xml  { render :xml => @users_access, :status => :created, :location => @users_access }
#      else
#        format.html { render :action => "new" }
#        format.xml  { render :xml => @users_access.errors, :status => :unprocessable_entity }
#     end
#    end
#  end

  # PUT /users_accesses/1
  # PUT /users_accesses/1.xml
  def update
		@user_access = current_user		
		if @user_access.update_attributes(params[:user_access])
			redirect_to loginseatings_path, :notice => 'Updated user information successfully.'
		else
			render :action => 'edit'
		end
	end

  
#  @users_access = UsersAccess.find(params[:id])

 #    if @users_access.update_attributes(params[:users_access])
 #       format.html { redirect_to(@users_access, :notice => 'Users access was successfully updated.') }
 #       format.xml  { head :ok }
 #     else
 #       format.html { render :action => "edit" }
 #       format.xml  { render :xml => @users_access.errors, :status => :unprocessable_entity }
 #     end
 #   end
 # end

  # DELETE /users_accesses/1
  # DELETE /users_accesses/1.xml
#  def destroy
#   @users_access = UsersAccess.find(params[:id])
#    @users_access.destroy#

#    respond_to do |format|
#      format.html { redirect_to(users_accesses_url) }
#      format.xml  { head :ok }
#    end
#  end
end
