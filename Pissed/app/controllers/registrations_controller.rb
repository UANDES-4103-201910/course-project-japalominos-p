class RegistrationsController < ApplicationController
   def new
   end
   def create
        user = User.create(
        nick_name: params[:registrations][:name],
        email: params[:registrations][:email],
        password: params[:registrations][:password])
        if user.save
            profile = Profile.create(user_id: user["id"])
            profile.save
            flash[:notice] = "Successful registration."
            redirect_to root_url
        else
            flash[:notice] = "Registration error."
            redirect_to registrations_url
        end
    end
    private
        def create_params 
                params.require(:user).permit(:nick_name, :email, :password)
        end
end
