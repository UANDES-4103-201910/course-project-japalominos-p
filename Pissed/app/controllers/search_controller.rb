class SearchController < ApplicationController
    def index
        if params[:search].blank? || params[:type_search].blank?  
          redirect_to(root_path, alert: "Its empty !") and return  
        elsif params[:type_search]== "User"
            
          @users= User.joins("INNER JOIN profiles ON profiles.user_id = users.id AND (profiles.city = '#{params[:search]}' OR profiles.country = '#{params[:search]}' OR users.nick_name = '#{params[:search]}' )")
            
        elsif params[:type_search]=="Post" 
            @posts=  Post.joins("INNER JOIN users ON posts.user_id = users.id AND (posts.title LIKE '%#{params[:search]}%' OR posts.body LIKE '%#{params[:search]}%' OR users.nick_name = '#{params[:search]}' )")
        end    
    end
end    