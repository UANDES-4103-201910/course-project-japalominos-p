class InappropietesController < ApplicationController
  before_action :set_inappropiete, only: [:show, :edit, :update, :destroy]

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

    respond_to do |format|
      if @inappropiete.save
        format.html { redirect_to @inappropiete, notice: 'Inappropiete was successfully created.' }
        format.json { render :show, status: :created, location: @inappropiete }
      else
        format.html { render :new }
        format.json { render json: @inappropiete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inappropietes/1
  # PATCH/PUT /inappropietes/1.json
  def update
    respond_to do |format|
      if @inappropiete.update(inappropiete_params)
        format.html { redirect_to @inappropiete, notice: 'Inappropiete was successfully updated.' }
        format.json { render :show, status: :ok, location: @inappropiete }
      else
        format.html { render :edit }
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
      params.require(:inappropiete).permit(:justification, :flag)
    end
end
