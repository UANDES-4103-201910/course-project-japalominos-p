class DumpsController < ApplicationController
    load_and_authorize_resource
  before_action :set_dump, only: [:show, :edit, :update, :destroy]

  # GET /dumps
  # GET /dumps.json
  def index
    @dumps = Dump.all
  end

  # GET /dumps/1
  # GET /dumps/1.json
  def show
  end

  # GET /dumps/new
  def new
    @dump = Dump.new
  end

  # GET /dumps/1/edit
  def edit
  end

  # POST /dumps
  # POST /dumps.json
  def create
    @dump = Dump.new(dump_params)

    respond_to do |format|
      if @dump.save
        format.html { redirect_to @dump, notice: 'Dump was successfully created.' }
        format.json { render :show, status: :created, location: @dump }
      else
        format.html { render :new }
        format.json { render json: @dump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dumps/1
  # PATCH/PUT /dumps/1.json
  def update
    respond_to do |format|
      if @dump.update(dump_params)
        format.html { redirect_to @dump, notice: 'Dump was successfully updated.' }
        format.json { render :show, status: :ok, location: @dump }
      else
        format.html { render :edit }
        format.json { render json: @dump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dumps/1
  # DELETE /dumps/1.json
  def destroy
    @dump.destroy
    respond_to do |format|
      format.html { redirect_to dumps_url, notice: 'Dump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dump
      @dump = Dump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dump_params
      params.require(:dump).permit(:author, :title, :body)
    end
end
