class UserController < ApplicationController  

  def new
    @user = User.new 

  end

  def create
    @user = User.new(user_params)
    if @user.save
    	flash[:success] = "Welcome to the ECommerce App!"
    	redirect_to @user     
    else
      render 'new'
    end
  end  

  def show
    @user = User.find(params[:id])

    render :action => 'new'
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,:repassword)
    end

    

   def login
    @user = User.new
  
   end

  def login_auth
     @auth_user = User.authenticate(params[:name],params[:password])

    if @auth_user 
      flash[:notice] = "Hi Welcome #{@auth_user.name}"
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "login"  
    end
  end

  
end
