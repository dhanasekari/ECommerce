class CategoryController < ApplicationController

	def index
		@category = Category.all
	end

	def show
		@category = Category.find(params[:id])

	end

	def show_product
		@category = Category.find(params[:id])
	 	@product = @category.product
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			flash[:sucess] = "categories added sucessfully"
			redirect_to category_path
		else
			flash[:danger] = "some problem"
			render new
		end
	end	

	def edit
		@category = Category.find(params[:id])      
	end

	def update
		@category = Category.find(params[:id])
        @category.update_attributes(category_params)
        redirect_to :action => 'show', :id => @category
	end

	def delete
		Category.find(params[:id]).destroy
        redirect_to :action => 'index'
	end

	private 
	def category_params
		params.require(:category).permit(:name, :description, :active )
	end


end
