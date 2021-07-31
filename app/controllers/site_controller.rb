class SiteController < ApplicationController
  def index
    redirect_to dashboard_path if user_signed_in?
  end

  def scout_search
    search = params["search"]
    @scout = Scout.find_by(reference_numer: search["code"]) if params["search"].present?
  end

end
