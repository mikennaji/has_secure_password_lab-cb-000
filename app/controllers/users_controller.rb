class UsersController < ApplicationController

  def create
    if params[:password] != params[:password_confirmation]
      redirect_to '/signup'
    else
      @user = User.create(user_params)
      session[:user_id] = @user.id
  end
end

private

def user_params
  params.require(:user).permit(:name, :password, :password_confirmation)
end

end
