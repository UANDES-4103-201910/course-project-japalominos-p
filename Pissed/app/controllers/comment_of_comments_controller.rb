class CommentOfCommentsController < ApplicationController
  before_action :set_comment_of_comment, only: [:show, :edit, :update, :destroy]

  # GET /comment_of_comments
  # GET /comment_of_comments.json
  def index
    @comment_of_comments = CommentOfComment.all
  end

  # GET /comment_of_comments/1
  # GET /comment_of_comments/1.json
  def show
  end

  # GET /comment_of_comments/new
  def new
    @comment_of_comment = CommentOfComment.new
  end

  # GET /comment_of_comments/1/edit
  def edit
  end

  # POST /comment_of_comments
  # POST /comment_of_comments.json
  def create
    @comment_of_comment = CommentOfComment.new(comment_of_comment_params)

    respond_to do |format|
      if @comment_of_comment.save
        format.html { redirect_to @comment_of_comment, notice: 'Comment of comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment_of_comment }
      else
        format.html { render :new }
        format.json { render json: @comment_of_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_of_comments/1
  # PATCH/PUT /comment_of_comments/1.json
  def update
    respond_to do |format|
      if @comment_of_comment.update(comment_of_comment_params)
        format.html { redirect_to @comment_of_comment, notice: 'Comment of comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_of_comment }
      else
        format.html { render :edit }
        format.json { render json: @comment_of_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_of_comments/1
  # DELETE /comment_of_comments/1.json
  def destroy
    @comment_of_comment.destroy
    respond_to do |format|
      format.html { redirect_to comment_of_comments_url, notice: 'Comment of comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_of_comment
      @comment_of_comment = CommentOfComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_of_comment_params
      params.require(:comment_of_comment).permit(:body)
    end
end
