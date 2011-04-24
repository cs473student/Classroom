class LgseatingsController < ApplicationController
  # GET /lgseatings
  # GET /lgseatings.xml
  def index
    @lgseatings = Lgseating.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lgseatings }
    end
  end

  # GET /lgseatings/1
  # GET /lgseatings/1.xml
  def show
    @lgseating = Lgseating.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lgseating }
    end
  end

  # GET /lgseatings/new
  # GET /lgseatings/new.xml
  def new
    @lgseating = Lgseating.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lgseating }
    end
  end

  # GET /lgseatings/1/edit
  def edit
    @lgseating = Lgseating.find(params[:id])
  end

  # POST /lgseatings
  # POST /lgseatings.xml
  def create
    @lgseating = Lgseating.new(params[:lgseating])

    respond_to do |format|
      if @lgseating.save
        format.html { redirect_to(@lgseating, :notice => 'Lgseating was successfully created.') }
        format.xml  { render :xml => @lgseating, :status => :created, :location => @lgseating }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lgseating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lgseatings/1
  # PUT /lgseatings/1.xml
  def update
    @lgseating = Lgseating.find(params[:id])

    respond_to do |format|
      if @lgseating.update_attributes(params[:lgseating])
        format.html { redirect_to(@lgseating, :notice => 'Lgseating was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lgseating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lgseatings/1
  # DELETE /lgseatings/1.xml
  def destroy
    @lgseating = Lgseating.find(params[:id])
    @lgseating.destroy

    respond_to do |format|
      format.html { redirect_to(lgseatings_url) }
      format.xml  { head :ok }
    end
  end
end
