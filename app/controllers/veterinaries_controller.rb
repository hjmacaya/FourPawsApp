class VeterinariesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @veterinaries = Veterinary.all
  end

  def show
    @veterinary = Veterinary.find(params[:id])
    veterinary_pets = []
    @veterinary.vets.each do |vet|
      vet.pets.each do |pet|
        veterinary_pets.append(pet)
      end
    end
    @veterinary_pets = veterinary_pets
  end
end
