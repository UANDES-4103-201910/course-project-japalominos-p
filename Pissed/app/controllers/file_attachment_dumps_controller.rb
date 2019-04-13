class FileAttachmentDumpsController < ApplicationController
  before_action :set_file_attachment_dump, only: [:show, :edit, :update, :destroy]

  # GET /file_attachment_dumps
  # GET /file_attachment_dumps.json
  def index
    @file_attachment_dumps = FileAttachmentDump.all
  end

  # GET /file_attachment_dumps/1
  # GET /file_attachment_dumps/1.json
  def show
  end

  # GET /file_attachment_dumps/new
  def new
    @file_attachment_dump = FileAttachmentDump.new
  end

  # GET /file_attachment_dumps/1/edit
  def edit
  end

  # POST /file_attachment_dumps
  # POST /file_attachment_dumps.json
  def create
    @dump = Dump.find(params[:dump_id])
    @file_attachment_dump = @dump.file_attachment_dumps.new(file_attachment_dump_params)

    respond_to do |format|
      if @file_attachment_dump.save
        format.html { redirect_to @file_attachment_dump, notice: 'File attachment dump was successfully created.' }
        format.json { render :show, status: :created, location: @file_attachment_dump }
      else
        format.html { render :new }
        format.json { render json: @file_attachment_dump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_attachment_dumps/1
  # PATCH/PUT /file_attachment_dumps/1.json
  def update
    respond_to do |format|
      if @file_attachment_dump.update(file_attachment_dump_params)
        format.html { redirect_to @file_attachment_dump, notice: 'File attachment dump was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_attachment_dump }
      else
        format.html { render :edit }
        format.json { render json: @file_attachment_dump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_attachment_dumps/1
  # DELETE /file_attachment_dumps/1.json
  def destroy
    @dump = Dump.find(params[:dump_id])
    @file_attachment_dump = @post.file_attachment_dumps.find(params[:id])
    @file_attachment_dump.destroy
    respond_to do |format|
      format.html { redirect_to file_attachment_dumps_url, notice: 'File attachment dump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_attachment_dump
      @file_attachment_dump = FileAttachmentDump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_attachment_dump_params
      params.require(:file_attachment_dump).permit(:url)
    end
end
