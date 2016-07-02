module PagesHelper

  def photos_or_signin_url
    logged_in? ? photos_url : signin_url
  end

end
