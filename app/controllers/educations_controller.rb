class EducationsController < ApplicationController
  def index
    @educations = Education.all
  end

  def create
    @education = Education.new

    respond_to do |format|
      if @education.save
        format.html { redirect_to @education, notice: 'Education was successfully created.' }
        format.json { render action: 'show', status: :created, location: @education }
      else
        format.html { render action: 'new' }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educations/1
  # DELETE /educations/1.json
  def destroy
    @education.destroy
    respond_to do |format|
      format.html { redirect_to educations_url }
      format.json { head :no_content }
    end
  end

end
