class AboutController < ApplicationController
    def about_flowers
      @flowers = ProductType.all.order('name ASC')

      @selected_flower = ProductType.find_by(id: params[:id])

      if @selected_flower.present?
        @selected_flower_products = Product.where(product_type_id: @selected_flower.id)

        @chat_groups = ChatGroup.where(about_product_id: @selected_flower.about_flower_id)

        @questions = Chat.where(chat_group_id: @chat_groups.pluck(:id), reply_to: nil).order('created_at ASC')
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

    def ask_question
      @flower = ProductType.find_by(id: params[:flower_id])

      @chat_group = ChatGroup.new(user_id: Current.user.id, about_product_id: @flower.about_flower_id)

      if @chat_group.save
        @chat = Chat.new(chat_group_id: @chat_group.id, user_id: Current.user.id, message: params[:message])

        if @chat.save
          redirect_to about_flowers_path(id: params[:flower_id]), notice: "Your question has been submitted."
        else
          redirect_to about_flowers_path(id: params[:flower_id]), alert: "There was an error submitting your question."
        end
      else
        redirect_to about_flowers_path(id: params[:flower_id]), alert: "There was an error submitting your question."
      end
    end

    def answer_question
      @existing_chat = Chat.find_by(reply_to: params[:reply_to])

      if @existing_chat.present?
        @existing_chat.update(message: params[:message])
        redirect_to about_flowers_path(id: params[:flower_id]), notice: "Your answer has been updated."
        return
      end


      @chat = Chat.new(chat_group_id: params[:chat_group_id], user_id: Current.user.id, message: params[:message], reply_to: params[:reply_to])

      if @chat.save
        redirect_to about_flowers_path(id: params[:flower_id]), notice: "Your answer has been submitted."
      else
        redirect_to about_flowers_path(id: params[:flower_id]), alert: "There was an error submitting your answer."
      end
    end
  end