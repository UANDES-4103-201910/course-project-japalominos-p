class HomeController < ApplicationController
  def start
  end
  def create 
      @user = User.where(password: params[:start][:password], email: params[:start][:email])[0]
      if @user
		flash[:notice] = "Successful login."
        cookies[:logged_user] = @user	
        redirect_to main_path   
      else
        flash[:notice] = "Session error."
		redirect_to root_url
      end
  end
  def destroy
      cookies[:logged_user] = nil
      redirect_to root_url
  end
  private
    def start_params
        params.require(:user).permit(:email, :password)
    end
end
