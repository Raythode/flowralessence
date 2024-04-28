class FlowersController < ApplicationController
    def create
        @product = Product.new(product_params)

        if @product.save
            redirect_to root_path, notice: "Flower added successfully!"
        else
            render :new, status: 400
        end
    end

    def update
    end

    def destroy
    end

    def product_params
        params.require(:product).permit(:product_name, :product_description, :price, :quantity, :product_type_id, :color_id, :occassion_id, :product_size_id, :product_type_id, :occassion_id, :color_id, :is_gift, :product_image)
    end
end