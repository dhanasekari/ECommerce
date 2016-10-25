class AddressController < ApplicationController
	def index
		@address=Address.all
	end

	def show
		@address = Address.find(params[:id])
	end	

	def new
	 	@address = Address.new
	 	
	end	

	def create
		@address = Address.new(address_params)
	
   	 	@address.save
      	redirect_to product_path	
	end

	def edit
		@address = Address.find(params[:id])      
	end
	
	def update
		@address = Address.find(params[:id])
      
      @address.update_attributes(address_params)
         redirect_to :action => 'show', :id => @address
    end

	def delete
		 Address.find(params[:id]).destroy
      redirect_to :action => 'index'
	end	 

   private
	def address_params
      params.require(:address).permit(:fname, :lname, :address1, :address2, :city, :state, :pincode, :phone )
   	end

end
