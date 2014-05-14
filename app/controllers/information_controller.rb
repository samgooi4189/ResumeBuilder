class InformationController < ApplicationController
  before_action :set_information, only: [:edit, :update, :destroy]

  # GET /information
  # GET /information.json
  def index
    @information = current_user.information
    redirect_to @information
  end

  # GET /information/1
  # GET /information/1.json
  def show
    @information = current_user.information
  end

  # GET /information/1/edit
  def edit
  end

  # POST /information
  # POST /information.json
  def create
    @information = current_user.resume_info.information.build(information_params)
    current_user.information << @information 

    respond_to do |format|
      if @information.save
        format.html { redirect_to @information, notice: 'Information was successfully created.' }
        format.json { render action: 'show', status: :created, location: @information }
      else
        format.html { render action: 'new' }
        format.json { render json: @information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /information/1
  # PATCH/PUT /information/1.json
  def update
    respond_to do |format|
      if @information.update(information_params)
        format.html { redirect_to @information, notice: 'Information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /information/1
  # DELETE /information/1.json
  def destroy
    @information.destroy
    respond_to do |format|
      format.html { redirect_to information_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_information
      @information = Information.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        flash[:notice] = "Record not found"
        redirect_to :action => 'show'
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def information_params
      params.require(:information).permit(:name, :address_1, :address_2, :city_state_zip, :h_phone, :b_phone, :email)
    end
end
