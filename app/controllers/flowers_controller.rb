class FlowersController < ApplicationController
    def create
        @product = Product.new(product_params)

        if @product.save
            redirect_to root_path, notice: "Flower added successfully!"
        else
            redirect_to root_path, alert: "Flower add failed!"
        end
    end

    def update
        @product = Product.find(params[:id])

        if @product.update(product_params)
            redirect_to root_path, notice: "Flower updated successfully!"
        else
            redirect_to root_path, alert: "Flower update failed!"
        end
    end

    def destroy
        @product = Product.find(params[:id])

        if @product.destroy
            redirect_to root_path, notice: "Flower deleted successfully!"
        else
            redirect_to root_path, alert: "Flower delete failed!"
        end
    end

    def product_params
        params.require(:product).permit(:product_name, :product_description, :price, :quantity, :product_type_id, :color_id, :occassion_id, :product_size_id, :product_type_id, :occassion_id, :color_id, :is_gift, :product_image)
    end
end