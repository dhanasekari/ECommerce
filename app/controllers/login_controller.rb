class LoginController < ApplicationController
	def login
    @user = User.new
  
  end

  def login_auth
     @auth_user = User.authenticate(params[:name],params[:password])

    if @auth_user 
      session[:user_id] = @auth_user.id   
      flash[:notice] = "Hi Welcome #{@auth_user.name}"
      #redirect_to(:action => 'login')
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "login"  
    end
  end

  def destroy
          session[:user_id] = nil
          redirect_to root_url, :notice => "Logged out!"
   

  end
end
