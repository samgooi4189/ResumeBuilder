class SkillsetsController < ApplicationController
  # GET /skillsets
  # GET /skillsets.json
  def index
    @skillsets = Skillset.all
  end
  # POST /skillsets
  # POST /skillsets.json
  def create
    @skillset = Skillset.new(skillset_params)

    respond_to do |format|
      if @skillset.save
        format.html { redirect_to @skillset, notice: 'Skillset was successfully created.' }
        format.json { render action: 'show', status: :created, location: @skillset }
      else
        format.html { render action: 'new' }
        format.json { render json: @skillset.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /skillsets/1
  # DELETE /skillsets/1.json
  def destroy
    @skillset.destroy
    respond_to do |format|
      format.html { redirect_to skillsets_url }
      format.json { head :no_content }
    end
  end

end
