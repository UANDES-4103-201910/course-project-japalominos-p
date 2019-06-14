class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  load_and_authorize_resource
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
    if @post.privacy === nil
        @post.privacy = false
    end
       if not post_params[:images].nil?
        @post.images.purge
      end

      if not post_params[:attachments].nil?
        @post.attachments.purge
      end
    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
      else
        format.html { render root_path }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to root_path, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { redirect_to root_path }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        end
    end    
  end
    

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    respond_to do |format|
    if @post.user_id == current_user.id
        @post.destroy
          format.html { redirect_to main_path , notice: 'Post was successfully destroyed.' }
          format.json { head :no_content }
    else
        format.html { redirect_to main_path }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end        
    end
  end
  
  #upvote
  def upvote
      @post.upvote_from current_user
      redirect_to root_path
  end
  
  #downvote
  def downvote
      @post.downvote_from current_user
      redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      if current_user.admin? 
          params.permit(:title, :body, :city, :country, :gps_location, :privacy, :visible, :latitude, :longitude, images: [], files: [])
      else 
          params.permit(:title, :body, :city, :country, :gps_location, :privacy,:latitude, :longitude, images: [], files: [])
      end      
    end
end
