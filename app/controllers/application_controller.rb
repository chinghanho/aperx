class ApplicationController < ActionController::Base

  include SessionsHelper

  protect_from_forgery with: :exception


  def reject_access
    flash[:danger] = "您已經登入"
    redirect_to root_url
  end

end
