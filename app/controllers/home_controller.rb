class HomeController < ApplicationController
  def index
    @items = Product.order('id ASC').all

    @cart_items_count = Cart.where(customer_id: Current.user.id).count
  end

  def add_to_cart
    @item = Product.find(params[:id])

    if @item.quantity > 0
      @cart = Cart.create(customer_id: Current.user.id ,product_id: @item.id, product_quantity: params[:quantity].to_i)

      @item.quantity -= params[:quantity].to_i
      @item.save
    end

    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
end