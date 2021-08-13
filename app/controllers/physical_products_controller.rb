class PhysicalProductsController < ApplicationController
  before_action :set_physical_product, only: [:show, :edit, :update, :destroy]

  # GET /physical_products
  # GET /physical_products.json
  def index
    @physical_products = PhysicalProduct.all
  end

  # GET /physical_products/1
  # GET /physical_products/1.json
  def show
  end

  # GET /physical_products/new
  def new
    @physical_product = PhysicalProduct.new
  end

  # GET /physical_products/1/edit
  def edit
  end

  # POST /physical_products
  # POST /physical_products.json
  def create
    @physical_product = PhysicalProduct.new(physical_product_params)

    respond_to do |format|
      if @physical_product.save
        format.html { redirect_to @physical_product, notice: 'Physical product was successfully created.' }
        format.json { render :show, status: :created, location: @physical_product }
      else
        format.html { render :new }
        format.json { render json: @physical_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physical_products/1
  # PATCH/PUT /physical_products/1.json
  def update
    respond_to do |format|
      if @physical_product.update(physical_product_params)
        format.html { redirect_to @physical_product, notice: 'Physical product was successfully updated.' }
        format.json { render :show, status: :ok, location: @physical_product }
      else
        format.html { render :edit }
        format.json { render json: @physical_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_products/1
  # DELETE /physical_products/1.json
  def destroy
    @physical_product.destroy
    respond_to do |format|
      format.html { redirect_to physical_products_url, notice: 'Physical product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical_product
      @physical_product = PhysicalProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def physical_product_params
      params.require(:physical_product).permit(:product_id, images: [])
    end
end
