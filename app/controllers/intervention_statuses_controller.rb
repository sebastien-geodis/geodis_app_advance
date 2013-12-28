class InterventionStatusesController < ApplicationController
  before_action :set_intervention_status, only: [:show, :edit, :update, :destroy]

  # GET /intervention_statuses
  # GET /intervention_statuses.json
  def index
    @intervention_statuses = InterventionStatus.all
  end

  # GET /intervention_statuses/1
  # GET /intervention_statuses/1.json
  def show
  end

  # GET /intervention_statuses/new
  def new
    @intervention_status = InterventionStatus.new
  end

  # GET /intervention_statuses/1/edit
  def edit
  end

  # POST /intervention_statuses
  # POST /intervention_statuses.json
  def create
    @intervention_status = InterventionStatus.new(intervention_status_params)

    respond_to do |format|
      if @intervention_status.save
        format.html { redirect_to @intervention_status, notice: 'Intervention status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @intervention_status }
      else
        format.html { render action: 'new' }
        format.json { render json: @intervention_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intervention_statuses/1
  # PATCH/PUT /intervention_statuses/1.json
  def update
    respond_to do |format|
      if @intervention_status.update(intervention_status_params)
        format.html { redirect_to @intervention_status, notice: 'Intervention status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @intervention_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intervention_statuses/1
  # DELETE /intervention_statuses/1.json
  def destroy
    @intervention_status.destroy
    respond_to do |format|
      format.html { redirect_to intervention_statuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intervention_status
      @intervention_status = InterventionStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intervention_status_params
      params.require(:intervention_status).permit(:name)
    end
end
