class ShipmentsController < ApplicationController
  before_action :set_shipment, only: [:show, :edit, :update, :destroy]

  # GET /shipments
  # GET /shipments.json
  def index
    @shipments = Shipment.all
  end

  # GET /shipments/1
  # GET /shipments/1.json
  def show
  end

  def shipment_search
    @shipments = Search.search_shipments(params[:search_term]).paginate(:page => params[:page], :per_page => 20)
    respond_to do |format|
      format.js
    end
  end
  # GET /shipments/new
  def new
    @shipment = Shipment.new
  end

  # GET /shipments/1/edit
  def edit
  end

  # POST /shipments
  # POST /shipments.json
  def create
    @shipment = Shipment.new(shipment_params)

    respond_to do |format|
      if @shipment.save
        format.html { redirect_to @shipment, notice: 'Shipment was successfully created.' }
        format.json { render :show, status: :created, location: @shipment }
      else
        format.html { render :new }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipments/1
  # PATCH/PUT /shipments/1.json
  def update
    respond_to do |format|
      if @shipment.update(shipment_params)
        format.html { redirect_to @shipment, notice: 'Shipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @shipment }
      else
        format.html { render :edit }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipments/1
  # DELETE /shipments/1.json
  def destroy
    @shipment.destroy
    respond_to do |format|
      format.html { redirect_to shipments_url, notice: 'Shipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment
      @shipment = Shipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipment_params
      params.require(:shipment).permit(:weight, :pack_date, :pick_date, :deliver_date, :company_id, :discount, :notes, :user_id,
                                       :origin_id, :dest_id, :origin_agent, :dest_agent, :carrier, :reg_no, :atlas_no, :gbl_no,
                                       :move_type, :miles, :survey_date, :hauler, :surveyor, :booker, :apu, :scan_date, :search_params,
                                       :o_name, :o_address, :o_city, :o_state, :o_zip, :o_phone, :o_cell, :o_notes,
                                       :d_name, :d_address, :d_city, :d_state, :d_zip, :d_phone, :d_cell, :d_notes)
    end
end
