class CerclesController < ApplicationController
  before_action :set_cercle, only: [:show, :edit, :update, :destroy]

  # GET /cercles
  # GET /cercles.json
  def index
    @cercles = Cercle.all
  end

  # GET /cercles/1
  # GET /cercles/1.json
  def show
  end

  # GET /cercles/new
  def new
    @cercle = Cercle.new
  end

  # GET /cercles/1/edit
  def edit
  end

  # POST /cercles
  # POST /cercles.json
  def create
    @cercle = Cercle.new(cercle_params)

    respond_to do |format|
      if @cercle.save
        format.html { redirect_to @cercle, notice: 'Cercle was successfully created.' }
        format.json { render :show, status: :created, location: @cercle }
      else
        format.html { render :new }
        format.json { render json: @cercle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cercles/1
  # PATCH/PUT /cercles/1.json
  def update
    respond_to do |format|
      if @cercle.update(cercle_params)
        format.html { redirect_to @cercle, notice: 'Cercle was successfully updated.' }
        format.json { render :show, status: :ok, location: @cercle }
      else
        format.html { render :edit }
        format.json { render json: @cercle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cercles/1
  # DELETE /cercles/1.json
  def destroy
    @cercle.destroy
    respond_to do |format|
      format.html { redirect_to cercles_url, notice: 'Cercle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cercle
      @cercle = Cercle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cercle_params
      params.require(:cercle).permit(:regions_id, :cercle_name, :cercle_name_short, :position, :code, :latitude, :longitude)
    end
end
