class MonitoringStatusesController < ApplicationController
  before_action :set_monitoring_status, only: [:show, :edit, :update, :destroy]
load_and_authorize_resource
  # GET /monitoring_statuses
  # GET /monitoring_statuses.json
  def index
    @monitoring_statuses = MonitoringStatus.all
  end

  # GET /monitoring_statuses/1
  # GET /monitoring_statuses/1.json
  def show
  end

  # GET /monitoring_statuses/new
  def new
    @monitoring_status = MonitoringStatus.new
  end

  # GET /monitoring_statuses/1/edit
  def edit
  end

  # POST /monitoring_statuses
  # POST /monitoring_statuses.json
  def create
    @monitoring_status = MonitoringStatus.new(monitoring_status_params)

    respond_to do |format|
      if @monitoring_status.save
        format.html { redirect_to @monitoring_status, notice: 'Monitoring status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @monitoring_status }
      else
        format.html { render action: 'new' }
        format.json { render json: @monitoring_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitoring_statuses/1
  # PATCH/PUT /monitoring_statuses/1.json
  def update
    respond_to do |format|
      if @monitoring_status.update(monitoring_status_params)
        format.html { redirect_to @monitoring_status, notice: 'Monitoring status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @monitoring_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitoring_statuses/1
  # DELETE /monitoring_statuses/1.json
  def destroy
    @monitoring_status.destroy
    respond_to do |format|
      format.html { redirect_to monitoring_statuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitoring_status
      @monitoring_status = MonitoringStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monitoring_status_params
      params.require(:monitoring_status).permit(:name)
    end
end
