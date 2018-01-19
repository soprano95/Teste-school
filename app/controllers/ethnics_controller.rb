class EthnicsController < ApplicationController
  before_action :set_ethnic, only: [:show, :edit, :update, :destroy]

  # GET /ethnics
  # GET /ethnics.json
  def index
    @ethnics = Ethnic.all
  end

  # GET /ethnics/1
  # GET /ethnics/1.json
  def show
  end

  # GET /ethnics/new
  def new
    @ethnic = Ethnic.new
  end

  # GET /ethnics/1/edit
  def edit
  end

  # POST /ethnics
  # POST /ethnics.json
  def create
    @ethnic = Ethnic.new(ethnic_params)

    respond_to do |format|
      if @ethnic.save
        format.html { redirect_to @ethnic, notice: 'Ethnic was successfully created.' }
        format.json { render :show, status: :created, location: @ethnic }
      else
        format.html { render :new }
        format.json { render json: @ethnic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ethnics/1
  # PATCH/PUT /ethnics/1.json
  def update
    respond_to do |format|
      if @ethnic.update(ethnic_params)
        format.html { redirect_to @ethnic, notice: 'Ethnic was successfully updated.' }
        format.json { render :show, status: :ok, location: @ethnic }
      else
        format.html { render :edit }
        format.json { render json: @ethnic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ethnics/1
  # DELETE /ethnics/1.json
  def destroy
    @ethnic.destroy
    respond_to do |format|
      format.html { redirect_to ethnics_url, notice: 'Ethnic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ethnic
      @ethnic = Ethnic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ethnic_params
      params.require(:ethnic).permit(:ethnic_name)
    end
end
