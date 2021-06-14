class SessionsController < ApplicationController


  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
    else
        return head(:forbidden) unless @user.authenticate(params[:password])
  end








end
