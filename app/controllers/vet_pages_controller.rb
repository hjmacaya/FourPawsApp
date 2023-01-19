class VetPagesController < ApplicationController
  skip_before_action :authenticate_user!
  def vet_home
  end
end
