class ServiceOfferingsController < ApplicationController
  before_action :set_service_offering, only: [:show, :edit, :update, :destroy]

  # GET /service_offerings
  # GET /service_offerings.json
  def index
    @service_offerings = ServiceOffering.all
  end

  # GET /service_offerings/1
  # GET /service_offerings/1.json
  def show
  end

  # GET /service_offerings/new
  def new
    @service_offering = ServiceOffering.new
  end

  # GET /service_offerings/1/edit
  def edit
  end

  # POST /service_offerings
  # POST /service_offerings.json
  def create
    @service_offering = ServiceOffering.new(service_offering_params)

    respond_to do |format|
      if @service_offering.save
        format.html { redirect_to @service_offering, notice: 'Service offering was successfully created.' }
        format.json { render :show, status: :created, location: @service_offering }
      else
        format.html { render :new }
        format.json { render json: @service_offering.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_offerings/1
  # PATCH/PUT /service_offerings/1.json
  def update
    respond_to do |format|
      if @service_offering.update(service_offering_params)
        format.html { redirect_to @service_offering, notice: 'Service offering was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_offering }
      else
        format.html { render :edit }
        format.json { render json: @service_offering.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_offerings/1
  # DELETE /service_offerings/1.json
  def destroy
    @service_offering.destroy
    respond_to do |format|
      format.html { redirect_to service_offerings_url, notice: 'Service offering was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_offering
      @service_offering = ServiceOffering.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_offering_params
      params.require(:service_offering).permit(:name)
    end
end
