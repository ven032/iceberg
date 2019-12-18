class DocsetsController < ApplicationController
  before_action :set_docset, only: [:show, :edit, :update, :destroy]

  # GET /docsets
  # GET /docsets.json
  def index
    @docsets = Docset.all
  end

  # GET /docsets/1
  # GET /docsets/1.json
  def show
  end

  # GET /docsets/new
  def new
    @docset = Docset.new
  end

  # GET /docsets/1/edit
  def edit
  end

  # POST /docsets
  # POST /docsets.json
  def create
    @docset = Docset.new(docset_params)

    respond_to do |format|
      if @docset.save
        format.html { redirect_to @docset, notice: 'Docset was successfully created.' }
        format.json { render :show, status: :created, location: @docset }
      else
        format.html { render :new }
        format.json { render json: @docset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /docsets/1
  # PATCH/PUT /docsets/1.json
  def update
    respond_to do |format|
      if @docset.update(docset_params)
        format.html { redirect_to @docset, notice: 'Docset was successfully updated.' }
        format.json { render :show, status: :ok, location: @docset }
      else
        format.html { render :edit }
        format.json { render json: @docset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /docsets/1
  # DELETE /docsets/1.json
  def destroy
    @docset.destroy
    respond_to do |format|
      format.html { redirect_to docsets_url, notice: 'Docset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_docset
      @docset = Docset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def docset_params
      params.require(:docset).permit(:description, :document_date, :document_currency, :document_amount, :shipment_date, :country_of_origin, :incoterms, :shipment_from, :port_of_loading, :port_of_discharge, :final_destination, :goods_description, :consignee, :shipper, :notify_party, :issuing_bank, :remarks, :lccreate_id)
    end
end
