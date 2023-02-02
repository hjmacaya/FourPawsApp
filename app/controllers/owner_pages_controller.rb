class OwnerPagesController < ApplicationController
  def owner_home
  end

  def new_appointment_1
    @veterinaries = Veterinary.all
  end

  def new_appointment_2
    @veterinary = Veterinary.find(params[:veterinary])
  end

  def new_appointment_3
    @vet = Vet.find(params[:vet])
  end
end
