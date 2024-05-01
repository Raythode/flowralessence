class AboutController < ApplicationController
    def about_flowers
      @flowers = ProductType.all.order('name ASC')

      @selected_flower = ProductType.find_by(id: params[:id])

      if @selected_flower.present?
        @selected_flower_products = Product.where(product_type_id: @selected_flower.id)
      end
    end

    def edit
      @flower = ProductType.find_by(id: params[:id])

      @about_flower = AboutFlower.find_by(id: @flower.about_flower_id)
    end

    def update
      @flower = ProductType.find_by(id: params[:id])

      @about_flower = AboutFlower.find_by(id: @flower.about_flower_id)
      @about_flower.update(flower_description_1: params[:about_flower][:flower_description_1], flower_description_2: params[:about_flower][:flower_description_2])

      redirect_to about_flowers_path(id: params[:id])
    end
  end