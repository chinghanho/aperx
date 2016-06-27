class SessionsController < ApplicationController

  before_action :reject_access, only: :new, if: :logged_in?

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticated?(:password, params[:session][:password])
      login user
      remember(user)
      flash[:success] = "#{user.login} 您好，歡迎！"
      redirect_to root_url
    else
      flash.now[:danger] = "無效的信箱或是密碼"
      render :new
    end
  end

  def destroy
    logout if logged_in?
    flash[:success] = "您已經登出"
    redirect_to root_url
  end

end
