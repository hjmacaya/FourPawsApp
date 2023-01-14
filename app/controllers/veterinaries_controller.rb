class VeterinariesController < ApplicationController
  def index
    @veterinaries = Veterinary.all
  end
end
