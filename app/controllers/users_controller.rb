class UsersController < ApplicationController

  def create
    if params[:password] != params[:password_confirmation]
      render :new
    else
      User.create(user_params)

  end
end

private

def user_params
  params.require(:user).permit(:name, :password, :password_confirmation)
end

end
