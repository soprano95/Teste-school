class LeisuresController < ApplicationController
  before_action :set_leisure, only: [:show, :edit, :update, :destroy]

  # GET /leisures
  # GET /leisures.json
  def index
    @leisures = Leisure.all
  end

  # GET /leisures/1
  # GET /leisures/1.json
  def show
  end

  # GET /leisures/new
  def new
    @leisure = Leisure.new
  end

  # GET /leisures/1/edit
  def edit
  end

  # POST /leisures
  # POST /leisures.json
  def create
    @leisure = Leisure.new(leisure_params)

    respond_to do |format|
      if @leisure.save
        format.html { redirect_to @leisure, notice: 'Leisure was successfully created.' }
        format.json { render :show, status: :created, location: @leisure }
      else
        format.html { render :new }
        format.json { render json: @leisure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leisures/1
  # PATCH/PUT /leisures/1.json
  def update
    respond_to do |format|
      if @leisure.update(leisure_params)
        format.html { redirect_to @leisure, notice: 'Leisure was successfully updated.' }
        format.json { render :show, status: :ok, location: @leisure }
      else
        format.html { render :edit }
        format.json { render json: @leisure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leisures/1
  # DELETE /leisures/1.json
  def destroy
    @leisure.destroy
    respond_to do |format|
      format.html { redirect_to leisures_url, notice: 'Leisure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leisure
      @leisure = Leisure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leisure_params
      params.require(:leisure).permit(:person_id, :leisure_type_id, :leisure_name)
    end
end
