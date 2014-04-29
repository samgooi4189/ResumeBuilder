class ResumeInfosController < ApplicationController
  before_action :set_resume_info, only: [:show, :edit, :update, :destroy]

  # GET /resume_infos
  # GET /resume_infos.json
  def index
    @resume_infos = ResumeInfo.all
  end

  # GET /resume_infos/1
  # GET /resume_infos/1.json
  def show
  end

  # GET /resume_infos/new
  def new
    @resume_info = ResumeInfo.new
  end

  # GET /resume_infos/1/edit
  def edit
  end

  # POST /resume_infos
  # POST /resume_infos.json
  def create
    @resume_info = ResumeInfo.new(resume_info_params)

    respond_to do |format|
      if @resume_info.save
        format.html { redirect_to @resume_info, notice: 'Resume info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @resume_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @resume_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resume_infos/1
  # PATCH/PUT /resume_infos/1.json
  def update
    respond_to do |format|
      if @resume_info.update(resume_info_params)
        format.html { redirect_to @resume_info, notice: 'Resume info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resume_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resume_infos/1
  # DELETE /resume_infos/1.json
  def destroy
    @resume_info.destroy
    respond_to do |format|
      format.html { redirect_to resume_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resume_info
      @resume_info = ResumeInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resume_info_params
      params.require(:resume_info).permit(:user_id)
    end
end
