class VipsController < ApplicationController
  before_action :set_vip, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /vips
  # GET /vips.json
  def index
    @search = Vip.search(params[:q])
    @vips = @search.result
  end

  # GET /vips/1
  # GET /vips/1.json
  def show
    @vip= Vip.find(params[:id])
    
  end

  # GET /vips/new
  def new
    @vip = Vip.new
  end

  # GET /vips/1/edit
  def edit
  end

  # POST /vips
  # POST /vips.json
  def create
    @vip = Vip.new(vip_params)

    respond_to do |format|
      if @vip.save
        format.html { redirect_to @vip, notice: 'Vip was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vip }
      else
        format.html { render action: 'new' }
        format.json { render json: @vip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vips/1
  # PATCH/PUT /vips/1.json
  def update
    respond_to do |format|
      if @vip.update(vip_params)
        format.html { redirect_to @vip, notice: 'Vip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vips/1
  # DELETE /vips/1.json
  def destroy
    @vip.destroy
    respond_to do |format|
      format.html { redirect_to vips_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vip
      @vip = Vip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vip_params
      params.require(:vip).permit(:nom, :prenom, :localisation, :fonction, :service, :email, :tel_fixe, :tel_portable, :assistante, :identifiants, :materiel, :domaine, :divers)
    end
end
