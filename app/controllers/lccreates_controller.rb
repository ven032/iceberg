class LccreatesController < ApplicationController
  before_action :set_lccreate, only: [:show, :edit, :update, :destroy]

  # GET /lccreates
  # GET /lccreates.json
  def index
    @lccreates = Lccreate.all
  end

  # GET /lccreates/1
  # GET /lccreates/1.json
  def show
  end

  # GET /lccreates/new
  def new
    @lccreate = Lccreate.new
  end

  # GET /lccreates/1/edit
  def edit
  end

  # POST /lccreates
  # POST /lccreates.json
  def create
    @lccreate = Lccreate.new(lccreate_params)

    respond_to do |format|
      if @lccreate.save
        format.html { redirect_to @lccreate, notice: 'Lccreate was successfully created.' }
        format.json { render :show, status: :created, location: @lccreate }
      else
        format.html { render :new }
        format.json { render json: @lccreate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lccreates/1
  # PATCH/PUT /lccreates/1.json
  def update
    respond_to do |format|
      if @lccreate.update(lccreate_params)
        format.html { redirect_to @lccreate, notice: 'Lccreate was successfully updated.' }
        format.json { render :show, status: :ok, location: @lccreate }
      else
        format.html { render :edit }
        format.json { render json: @lccreate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lccreates/1
  # DELETE /lccreates/1.json
  def destroy
    @lccreate.destroy
    respond_to do |format|
      format.html { redirect_to lccreates_url, notice: 'Lccreate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lccreate
      @lccreate = Lccreate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lccreate_params
      params.require(:lccreate).permit(:lc_number, :issue_date, :expiry_date, :currency, :amount, :applicant, :beneficiary, :issuing_bank, :tenor, :shipment_from, :port_of_loading, :port_of_discharge, :final_destination, :latest_shipment_date, :partial_shipment, :transhipment, :goods_description, :documents_required, :additional_conditions, :drawee, :available_with, :available_by, :remarks)
    end
end
