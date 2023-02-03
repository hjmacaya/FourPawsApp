class OwnerPagesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_owner!
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

  def taken?(datetime)
    taken = false
    @vet.appointments.each do |appointment|
      taken = true if appointment.start_time == datetime
    end
    return taken
  end
end
