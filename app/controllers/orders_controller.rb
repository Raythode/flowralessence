class OrdersController < ApplicationController
  def index
    @orders = Order.where(customer_id: Current.user.id).group_by(&:order_number)
  end

  def checkout
  end

  def show
    @order = Order.where(customer_id: Current.user.id, order_number: params[:order_number])

    @order_total = @order.first.order_total
    @order_tax = @order.first.order_tax
    @order_complete_total = @order_total + @order_tax
  end

  def create
    @cart_items = Cart.all.where(customer_id: Current.user.id)

    @total_price = Cart.all.where(customer_id: Current.user.id).sum { |cart| cart.product.price * cart.product_quantity }
    @tax = @total_price * 6.625 / 100
    @complete_price = @total_price + @tax
    @order_number = 5.times.map { [*0..9].sample }.join.to_i

    @address = Address.new
    @address.address_line_1 = params[:address_line_1]
    @address.address_line_2 = params[:address_line_2]
    @address.city = params[:city]
    @address.state = params[:state]
    @address.zip_code = params[:zip_code]

    @address.save

    @payment = Payment.new
    @payment.name_on_card = params[:name_on_card]
    @payment.card_number = params[:card_number]
    @payment.expiration_date = params[:expiration_date]
    @payment.cvv = params[:cvv]
    @payment.zip_code = params[:zip_code]
    if params[:is_billing_address_same_as_shipping_address] == "Yes"
      @payment.billing_address = @address.id
    else
      @billing_address = Address.new
      @billing_address.billing_address_line_1 = params[:billing_address_line_1]
      @billing_address.billing_address_line_2 = params[:billing_address_line_2]
      @billing_address.billing_city = params[:billing_city]
      @billing_address.billing_state = params[:billing_state]
      @billing_address.billing_zip_code = params[:billing_zip_code]

      @payment.billing_address = @billing_address.id

      @billing_address.save

      @payment.billing_address = @billing_address.id
    end

    @payment.save

    @cart_items.each do |cart|
      @order = Order.new
      @order.customer_id = Current.user.id
      @order.order_tax = @tax
      @order.order_total = @complete_price
      @order.product_id = cart.product_id
      @order.product_quantity = cart.product_quantity
      @order.product_sale_price = cart.product.price

      @status = Status.where(status: "Pending").first

      @order.status_id = @status.id
      @order.payment_info_id = @payment.id
      @order.address_id = @address.id

      @order.order_number = @order_number

      @order.save
    end

    order_placed = Order.where(customer_id: Current.user.id, order_number: @order_number).first

    if order_placed.present?
      Cart.where(customer_id: Current.user.id).destroy_all

      redirect_to orders_path, notice: "Order placed successfully!"
    else
      redirect_to checkout_path
    end
  end
end