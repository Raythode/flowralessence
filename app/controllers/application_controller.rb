class ApplicationController < ActionController::Base
    before_action :set_current_user, :require_user_logged_in!

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

    def clear_cart
        @cart_items = Cart.all.where(customer_id: Current.user.id)

        @cart_items.each do |cart|
            product = Product.find(cart.product_id)
            product.quantity += cart.product_quantity
            product.save
        end

        Cart.where(customer_id: Current.user.id).destroy_all

        respond_to do |format|
            format.html { redirect_to root_path }
        end
    end

    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])

            if Current.user
                @cart_items_count = Cart.where(customer_id: Current.user.id).count

                @cart_items = Cart.all.where(customer_id: Current.user.id)
            
                @total_price = Cart.all.where(customer_id: Current.user.id).sum { |cart| cart.product.price * cart.product_quantity }
                
                @tax = @total_price * 6.625 / 100
    
                @complete_price = @total_price + @tax
            end
        end
    end

    private
        def require_user_logged_in!
            redirect_to sign_in_path if Current.user.nil?
        end
end
