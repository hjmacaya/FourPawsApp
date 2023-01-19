class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home login_view]

  def home
  end

  def vet_home
  end

  def login_view
  end
end
