class HomeController < ApplicationController
  def index
    @items = Product.order('id ASC').all

    @cart_items_count = Cart.where(customer_id: Current.user.id).count

    @cart_items = Cart.all.where(customer_id: Current.user.id)

    @total_price = Cart.all.where(customer_id: Current.user.id).sum { |cart| cart.product.price * cart.product_quantity }
  end

  def add_to_cart
    @item = Product.find(params[:id])

    if @item.quantity > 0
      @cart = Cart.upsert({customer_id: Current.user.id, product_id: @item.id, product_quantity: params[:quantity].to_i})
      
      @item.quantity -= params[:quantity].to_i
      @item.save
    end

    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
end