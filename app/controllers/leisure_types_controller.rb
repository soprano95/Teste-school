class LeisureTypesController < ApplicationController
  before_action :set_leisure_type, only: [:show, :edit, :update, :destroy]

  # GET /leisure_types
  # GET /leisure_types.json
  def index
    @leisure_types = LeisureType.all
  end

  # GET /leisure_types/1
  # GET /leisure_types/1.json
  def show
  end

  # GET /leisure_types/new
  def new
    @leisure_type = LeisureType.new
  end

  # GET /leisure_types/1/edit
  def edit
  end

  # POST /leisure_types
  # POST /leisure_types.json
  def create
    @leisure_type = LeisureType.new(leisure_type_params)

    respond_to do |format|
      if @leisure_type.save
        format.html { redirect_to @leisure_type, notice: 'Leisure type was successfully created.' }
        format.json { render :show, status: :created, location: @leisure_type }
      else
        format.html { render :new }
        format.json { render json: @leisure_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leisure_types/1
  # PATCH/PUT /leisure_types/1.json
  def update
    respond_to do |format|
      if @leisure_type.update(leisure_type_params)
        format.html { redirect_to @leisure_type, notice: 'Leisure type was successfully updated.' }
        format.json { render :show, status: :ok, location: @leisure_type }
      else
        format.html { render :edit }
        format.json { render json: @leisure_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leisure_types/1
  # DELETE /leisure_types/1.json
  def destroy
    @leisure_type.destroy
    respond_to do |format|
      format.html { redirect_to leisure_types_url, notice: 'Leisure type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leisure_type
      @leisure_type = LeisureType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leisure_type_params
      params.require(:leisure_type).permit(:leisure_type_name)
    end
end
