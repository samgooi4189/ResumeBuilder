class ResumeInfosController < ApplicationController
  before_action :signed_in_user

  # GET /resume_infos
  # GET /resume_infos.json
  def index
    @resume_infos = ResumeInfo.all
  end

  def create
    @resume_info = ResumeInfo.new({:user_id => current_user.id})
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

  # DELETE /resume_infos/1
  # DELETE /resume_infos/1.json
  def destroy
    @resume_info.destroy
    respond_to do |format|
      format.html { redirect_to resume_infos_url }
      format.json { head :no_content }
    end
  end

end
