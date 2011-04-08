class SeatingsController < ApplicationController
  # GET /seatings
  # GET /seatings.xml
  def index
    #@seatings = Seating.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seatings }
    end
  end

  # GET /seatings/1
  # GET /seatings/1.xml
  def show
    @seating = Seating.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seating }
    end
  end

  # GET /seatings/new
  # GET /seatings/new.xml
  def new
    @seating = Seating.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @seating }
    end
  end

  # GET /seatings/1/edit
  def edit
    @seating = Seating.find(params[:id])
  end

  # POST /seatings
  # POST /seatings.xml
  def create
    @seating = Seating.new(params[:seating])

    respond_to do |format|
      if @seating.save
        format.html { redirect_to(@seating, :notice => 'Seating was successfully created.') }
        format.xml  { render :xml => @seating, :status => :created, :location => @seating }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @seating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /seatings/1
  # PUT /seatings/1.xml
  def update
    @seating = Seating.find(params[:id])

    respond_to do |format|
      if @seating.update_attributes(params[:seating])
        format.html { redirect_to(@seating, :notice => 'Seating was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @seating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seatings/1
  # DELETE /seatings/1.xml
  def destroy
    @seating = Seating.find(params[:id])
    @seating.destroy

    respond_to do |format|
      format.html { redirect_to(seatings_url) }
      format.xml  { head :ok }
    end
  end
end
