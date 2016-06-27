class PagesController < ApplicationController

  def index
    redirect_to photos_url if logged_in?
  end

end
