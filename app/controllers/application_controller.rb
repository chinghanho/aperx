class ApplicationController < ActionController::Base

  include SessionsHelper

  protect_from_forgery with: :exception


  def reject_access_to(url, options = {})
    flash_message = options[:flash]
    raise "options :flash is required."  unless flash_message
    raise "first param URL is required." unless url
    flash[:danger] = flash_message
    redirect_to url
  end

  def required_login
    reject_access_to(signin_url, flash: '請先登入') unless logged_in?
  end

end
