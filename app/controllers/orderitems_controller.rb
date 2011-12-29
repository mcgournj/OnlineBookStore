class OrderitemsController < ApplicationController
  # GET /orderitems
  # GET /orderitems.xml
  def index
    @orderitems = Orderitem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @orderitems }
    end
  end

  # GET /orderitems/1
  # GET /orderitems/1.xml
  def show
    @orderitem = Orderitem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @orderitem }
    end
  end

  # GET /orderitems/new
  # GET /orderitems/new.xml
  def new
    @orderitem = Orderitem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @orderitem }
    end
  end

  # GET /orderitems/1/edit
  def edit
    @orderitem = Orderitem.find(params[:id])
  end

  # POST /orderitems
  # POST /orderitems.xml
  def create
    @orderitem = Orderitem.new(params[:orderitem])

    respond_to do |format|
      if @orderitem.save
        format.html { redirect_to(@orderitem, :notice => 'Orderitem was successfully created.') }
        format.xml  { render :xml => @orderitem, :status => :created, :location => @orderitem }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @orderitem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /orderitems/1
  # PUT /orderitems/1.xml
  def update
    @orderitem = Orderitem.find(params[:id])

    respond_to do |format|
      if @orderitem.update_attributes(params[:orderitem])
        format.html { redirect_to(@orderitem, :notice => 'Orderitem was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @orderitem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /orderitems/1
  # DELETE /orderitems/1.xml
  def destroy
    @orderitem = Orderitem.find(params[:id])
    @orderitem.destroy

    respond_to do |format|
      format.html { redirect_to(orderitems_url) }
      format.xml  { head :ok }
    end
  end
end
