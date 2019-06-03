class MainController < ApplicationController

    
  def index
      @profile = Profile.where(user_id: current_user.id ).take
      @posts= Post.all
  end
end
