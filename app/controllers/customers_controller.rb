class CustomersController < ApplicationController

  before_filter :load

  def load
    @customers = Customer.all
    @customer  = Customer.new
  end
  
  # Display composite form used for AJAX operations.

  def index   
  end


 

  # This method implements customer create action for AJAX request.

  def create  
    @customer = Customer.new(params[:customer])
    if @customer.save
      flash[:notice] = "Customer Record Created."
      @customers = Customer.all
      respond_to do |format|
        format.js
      end
    end 
  
  end 
  

  # This method get customer for editing using AJAX.

  def edit
    @customer = Customer.find(params[:id])   
    respond_to do |format|
      format.js
    end
  end

  # This method implements customer update from AJAX form.

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(params[:customer])
      flash[:notice] = "Customer Record Updated."
      @customers = Customer.all
      respond_to do |format|
        format.js
      end 
    end
  end  

  # This method implements customer delete from AJAX form.

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    flash[:notice] = "Customer Record Deleted"
    @customers = Customer.all
    respond_to do |format|
      format.js
    end
 
  end

  # This method lists all customers on file. 

  def getcustsjson
    render :json => @customers
  end

  # This method lists all the books purchased by a particular customer.

  def getbooksjson

    @customer = Customer.find(params[:id]) 
    @order = @customer.order
    @orderitems = Orderitem.find_all_by_order_id(@order)
    @book = Book.find_all_by_id(@orderitems)

    render :json => @book 
	
  end 

end
