class AreasSkillsController < ApplicationController
  before_action :set_areas_skill, only: [:show, :edit, :update, :destroy]

  # GET /areas_skills
  # GET /areas_skills.json
  def index
    @areas_skills = AreasSkill.all
  end

  # GET /areas_skills/1
  # GET /areas_skills/1.json
  def show
  end

  # GET /areas_skills/new
  def new
    @areas_skill = AreasSkill.new
  end

  # GET /areas_skills/1/edit
  def edit
  end

  # POST /areas_skills
  # POST /areas_skills.json
  def create
    @areas_skill = AreasSkill.new(areas_skill_params)

    respond_to do |format|
      if @areas_skill.save
        format.html { redirect_to @areas_skill, notice: 'Areas skill was successfully created.' }
        format.json { render :show, status: :created, location: @areas_skill }
      else
        format.html { render :new }
        format.json { render json: @areas_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /areas_skills/1
  # PATCH/PUT /areas_skills/1.json
  def update
    respond_to do |format|
      if @areas_skill.update(areas_skill_params)
        format.html { redirect_to @areas_skill, notice: 'Areas skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @areas_skill }
      else
        format.html { render :edit }
        format.json { render json: @areas_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /areas_skills/1
  # DELETE /areas_skills/1.json
  def destroy
    @areas_skill.destroy
    respond_to do |format|
      format.html { redirect_to areas_skills_url, notice: 'Areas skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_areas_skill
      @areas_skill = AreasSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def areas_skill_params
      params.require(:areas_skill).permit(:areas_skill_name)
    end
end
