class VeterinariesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @veterinaries = Veterinary.all
  end
end
