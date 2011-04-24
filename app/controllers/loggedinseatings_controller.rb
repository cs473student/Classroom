class LoggedinseatingsController < ApplicationController
  # GET /loggedinseatings
  # GET /loggedinseatings.xml
  def index
    @loggedinseatings = Loggedinseating.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @loggedinseatings }
    end
  end

  # GET /loggedinseatings/1
  # GET /loggedinseatings/1.xml
  def show
    @loggedinseating = Loggedinseating.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @loggedinseating }
    end
  end

  # GET /loggedinseatings/new
  # GET /loggedinseatings/new.xml
  def new
    @loggedinseating = Loggedinseating.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @loggedinseating }
    end
  end

  # GET /loggedinseatings/1/edit
  def edit
    @loggedinseating = Loggedinseating.find(params[:id])
  end

  # POST /loggedinseatings
  # POST /loggedinseatings.xml
  def create
    @loggedinseating = Loggedinseating.new(params[:loggedinseating])

    respond_to do |format|
      if @loggedinseating.save
        format.html { redirect_to(@loggedinseating, :notice => 'Loggedinseating was successfully created.') }
        format.xml  { render :xml => @loggedinseating, :status => :created, :location => @loggedinseating }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @loggedinseating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /loggedinseatings/1
  # PUT /loggedinseatings/1.xml
  def update
    @loggedinseating = Loggedinseating.find(params[:id])

    respond_to do |format|
      if @loggedinseating.update_attributes(params[:loggedinseating])
        format.html { redirect_to(@loggedinseating, :notice => 'Loggedinseating was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @loggedinseating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /loggedinseatings/1
  # DELETE /loggedinseatings/1.xml
  def destroy
    @loggedinseating = Loggedinseating.find(params[:id])
    @loggedinseating.destroy

    respond_to do |format|
      format.html { redirect_to(loggedinseatings_url) }
      format.xml  { head :ok }
    end
  end
end
