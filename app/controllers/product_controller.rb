class ProductController < ApplicationController

	def index
		@product=Product.all
	end

	def show
		@product = Product.find(params[:id])
	end	

	def new
	 	@product = Product.new
	 	
	end	

	def create
		@product = Product.new(product_params)
	
   	 	@product.save
      	redirect_to :action => 'index'		
	end

	def edit
		@product = Product.find(params[:id])      
	end
	
	def update
		@product = Product.find(params[:id])
      
      @product.update_attributes(product_params)
         redirect_to :action => 'show', :id => @product
    end

	def delete
		 Product.find(params[:id]).destroy
      redirect_to :action => 'index'
	end	 

   private
	def product_params
      params.require(:product).permit(:ProductName, :description, :price, :size, :color, :discount, :status )
   	end
end
