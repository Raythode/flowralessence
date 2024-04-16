class AboutController < ApplicationController
    def about_flowers
      @flowers = ProductType.all.order('name ASC')

      @selected_flower = ProductType.find_by(id: params[:id])
      @selected_flower_products = Product.where(product_type_id: @selected_flower.id)
    end
  end