class OrderController < ApplicationController
	def index
		@order = Order.all
	end

	def show
		@order = Order.find(params[:id])
	end

	def new 
		@order = Order.new
	end

	def create
		@order = Order.new(order_params)
		@order.save
      	redirect_to :action => 'index'
	end

	

	def edit
		@order = Order.find(params[:id])

	end

	def update
		@order = Order.find(params[:id])
		@order.update_attributes(order_params)
        redirect_to :action => 'show', :id => @order
	end

	private
	def order_params
	    params.require(:order).permit(:subtotal, :tax, :shipping, :total )
	end

	def destroy
      
		Order.find(params[:id]).destroy
		redirect_to :action => 'index'
	end

	
end
