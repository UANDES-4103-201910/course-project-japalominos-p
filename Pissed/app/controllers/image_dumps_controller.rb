class ImageDumpsController < ApplicationController
  before_action :set_image_dump, only: [:show, :edit, :update, :destroy]

  # GET /image_dumps
  # GET /image_dumps.json
  def index
    @image_dumps = ImageDump.all
  end

  # GET /image_dumps/1
  # GET /image_dumps/1.json
  def show
  end

  # GET /image_dumps/new
  def new
    @image_dump = ImageDump.new
  end

  # GET /image_dumps/1/edit
  def edit
  end

  # POST /image_dumps
  # POST /image_dumps.json
  def create
    @dump = Dump.find(params[:dump_id])
    @image_dump = @dump.image_dumps.new(image_dump_params)


    respond_to do |format|
      if @image_dump.save
        format.html { redirect_to @image_dump, notice: 'Image dump was successfully created.' }
        format.json { render :show, status: :created, location: @image_dump }
      else
        format.html { render :new }
        format.json { render json: @image_dump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_dumps/1
  # PATCH/PUT /image_dumps/1.json
  def update
    respond_to do |format|
      if @image_dump.update(image_dump_params)
        format.html { redirect_to @image_dump, notice: 'Image dump was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_dump }
      else
        format.html { render :edit }
        format.json { render json: @image_dump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_dumps/1
  # DELETE /image_dumps/1.json
  def destroy
    @dump = Dump.find(params[:dump_id])
    @image_dump = @dump.image_dumps.find(params[:id])
    @image_dump.destroy
    respond_to do |format|
      format.html { redirect_to image_dumps_url, notice: 'Image dump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_dump
      @image_dump = ImageDump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_dump_params
      params.require(:image_dump).permit(:url)
    end
end
