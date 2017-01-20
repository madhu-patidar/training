class CartItemsController < ApplicationController
  before_action :set_cart_item, only: [ :edit, :update, :destroy]

  # GET /cart_items
  # GET /cart_items.json
  def index
    @cart_items = CartItem.all
  end

  # GET /cart_items/1
  # GET /cart_items/1.json
  def show
    @cart_items = CartItem.where(customer_id: current_customer.id)
  end

  # GET /cart_items/new
  def new
    @cart_item = CartItem.new
  end

  # GET /cart_items/1/edit
  def edit
  end

  # POST /cart_items
  # POST /cart_items.json
  def create
    if !customer_signed_in?
      redirect_to new_customer_session_path
    else
      @product = Product.find(params[:product_id])
      if @product.quantity >= 1 
        @cart_item = CartItem.where(product_id: params[:product_id],customer_id:current_customer.id).first
        if @cart_item.present?
          @cart_item.quantity += 1
        else
          @cart_item = CartItem.new(product_id: params[:product_id],customer_id: current_customer.id, quantity: 1)
        end
        
      respond_to do |format|
      if @cart_item.save
          @product.quantity -= 1
          @product.save
        format.html { redirect_to :back, notice: 'Item was successfully added to Cart.' }
        format.json { render :show, status: :created, location: @cart_item }
      else
        format.html { render :back }
        format.json { render json: @coustomer.errors, status: :unprocessable_entity }
      end
    end
       
      end
    end
  end

  # PATCH/PUT /cart_items/1
  # PATCH/PUT /cart_items/1.json
  def update
    respond_to do |format|
      if @cart_item.update(cart_item_params)
        format.html { redirect_to @cart_item, notice: 'Cart item was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart_item }
      else
        format.html { render :edit }
        format.json { render json: @cart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_items/1
  # DELETE /cart_items/1.json
  def destroy
    @product = Product.find(@cart_item.product_id)
    @product.quantity += @cart_item.quantity
    @cart_item.destroy
    @product.save
    respond_to do |format|
      format.html { redirect_to cart_item_url, notice: 'Cart item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_item_params
      # params.fetch(:cart_item, {})
      params.require(:cart_item).permit(:customer_id, :product_id, :quantity)
    end
end
