class InappropietesController < ApplicationController
  before_action :set_inappropiete, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  # GET /inappropietes
  # GET /inappropietes.json
  def index
    @inappropietes = Inappropiete.all
  end

  # GET /inappropietes/1
  # GET /inappropietes/1.json
  def show
  end

  # GET /inappropietes/new
  def new
    @inappropiete = Inappropiete.new
  end

  # GET /inappropietes/1/edit
  def edit
  end

  # POST /inappropietes
  # POST /inappropietes.json
  def create
    @inappropiete = Inappropiete.new(inappropiete_params)
    @inappropiete.user_id = current_user.id
    @inappropiete.post_id = params["post_id"]  
    
    respond_to do |format|
      if @inappropiete.save
        format.html { redirect_to root_path, notice: 'Inappropiete was successfully created.' }
        format.json { render :show, status: :created, location: @inappropiete }
      else
        format.html { redirect_to root_path }
        format.json { render json: @inappropiete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inappropietes/1
  # PATCH/PUT /inappropietes/1.json
  def update
    @post = Post.where(id: @inappropiete.post.id).take
    @user = User.where(id: @inappropiete.user.id).take
    if inappropiete_params["flag"] == "1"
        Post.update(@inappropiete.post.id, :visible => '0')
    
        if @user.flags == 3
            @posts = Post.where(user_id: @user.id)
            @posts.each do |post|
                    @dump = Dump.create(author: post.user.id.to_s, title: post.title, body: post.body)
                    @dump.save
                    Post.update(post.id, :visible => '0')
            end
            @blacklist = Blacklist.create(user_id: @user.id) 
            @blacklist.save
        end
    else
        @inappropiete.flag = false
    end
    respond_to do |format|
      if @inappropiete.update(inappropiete_params)
        format.html { redirect_to root_path, notice: 'Inappropiete was successfully updated.' }
        format.json { render :show, status: :ok, location: @inappropiete }
      else
        format.html { redirect_to root_path }
        format.json { render json: @inappropiete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inappropietes/1
  # DELETE /inappropietes/1.json
  def destroy
    @inappropiete.destroy
    respond_to do |format|
      format.html { redirect_to inappropietes_url, notice: 'Inappropiete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inappropiete
      @inappropiete = Inappropiete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inappropiete_params
      if current_user.admin?
            params.require(:inappropiete).permit(:flag, :justification)
      else
         params.permit(:justification) 
      end
    end
end
