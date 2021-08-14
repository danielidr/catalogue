class DigitalProductsController < ApplicationController
  before_action :set_digital_product, only: [:show, :edit, :update, :destroy]
  before_action :set_product, only: [:edit, :new, :create]

  # GET /digital_products
  # GET /digital_products.json
  def index
    @digital_products = DigitalProduct.all
  end

  # GET /digital_products/1
  # GET /digital_products/1.json
  def show
  end

  # GET /digital_products/new
  def new
    @digital_product = DigitalProduct.new
  end

  # GET /digital_products/1/edit
  def edit
  end

  # POST /digital_products
  # POST /digital_products.json
  def create
    @digital_product = DigitalProduct.new(digital_product_params)

    respond_to do |format|
      if @digital_product.save
        format.html { redirect_to @digital_product, notice: 'Digital product was successfully created.' }
        format.json { render :show, status: :created, location: @digital_product }
      else
        format.html { render :new }
        format.json { render json: @digital_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /digital_products/1
  # PATCH/PUT /digital_products/1.json
  def update
    respond_to do |format|
      if @digital_product.update(digital_product_params)
        format.html { redirect_to @digital_product, notice: 'Digital product was successfully updated.' }
        format.json { render :show, status: :ok, location: @digital_product }
      else
        format.html { render :edit }
        format.json { render json: @digital_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /digital_products/1
  # DELETE /digital_products/1.json
  def destroy
    @digital_product.destroy
    respond_to do |format|
      format.html { redirect_to digital_products_url, notice: 'Digital product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_digital_product
      @digital_product = DigitalProduct.find(params[:id])
    end

    def set_product
      @products = Product.pluck :name, :id
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def digital_product_params
      params.require(:digital_product).permit(:product_id, :image)
    end
end
