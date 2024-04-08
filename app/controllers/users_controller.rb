class UsersController < ApplicationController
  skip_before_action :require_user_logged_in!, only: [:new, :create]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    user_role = UserRole.find_by(role: "Customer")
    @user.role_id = user_role.id

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Account created successfully!"
    else
      render :new, status: 400
    end
  end

  def user_params
    params.require(:user).permit(:full_name, :email, :password, :password_confirmation)
  end
end