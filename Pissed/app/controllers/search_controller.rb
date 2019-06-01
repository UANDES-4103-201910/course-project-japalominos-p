class SearchController < ApplicationController
    def index
        if params[:search].blank?  
          redirect_to(root_path, alert: "Its empty !") and return  
        else  
          @users= User.joins("INNER JOIN profiles ON profiles.user_id = users.id AND (profiles.city = '#{params[:search]}' OR profiles.country = '#{params[:search]}' OR users.nick_name = '#{params[:search]}' )")
        end   
    end
end    