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
        veterinary_pets.append(pet) unless veterinary_pets.include?(pet)
      end
    end
    @veterinary_pets = veterinary_pets
    records = []
    @veterinary.vets.each do |vet|
      vet.records.each do |record|
        records.append(record) unless records.include?(record)
      end
    end
    @records = records
  end
end
