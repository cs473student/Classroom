class LoginseatingsController < ApplicationController
  before_filter :authenticate, :except => [:index, :show]
  
  # GET /loginseatings
  # GET /loginseatings.xml
  def index
    @loginseating = Loginseating.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @loginseatings }
    end
  end

  # GET /loginseatings/1
  # GET /loginseatings/1.xml
  def show
    @loginseating = Loginseating.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @loginseating }
    end
  end

  # GET /loginseatings/new
  # GET /loginseatings/new.xml
  def new
    @loginseating = Loginseating.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @loginseating }
    end
  end

  # GET /loginseatings/1/edit
  def edit
    @loginseating = Loginseating.find(params[:id])
  end

  # POST /loginseatings
  # POST /loginseatings.xml
  def create
    @loginseating = Loginseating.new(params[:loginseating])

    respond_to do |format|
      if @loginseating.save
        format.html { redirect_to(@loginseating, :notice => 'Loginseating was successfully created.') }
        format.xml  { render :xml => @loginseating, :status => :created, :location => @loginseating }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @loginseating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /loginseatings/1
  # PUT /loginseatings/1.xml
  def update
    @loginseating = Loginseating.find(params[:id])

    respond_to do |format|
      if @loginseating.update_attributes(params[:loginseating])
        format.html { redirect_to(@loginseating, :notice => 'Loginseating was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @loginseating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /loginseatings/1
  # DELETE /loginseatings/1.xml
  def destroy
    @loginseating = Loginseating.find(params[:id])
    @loginseating.destroy

    respond_to do |format|
      format.html { redirect_to(loginseatings_url) }
      format.xml  { head :ok }
    end
  end
end
