class AppointmentsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
    @pets = current_owner.pets
    @vet = Vet.find(params[:vet_id])
    @veterinary = @vet.veterinary
    @vets = @veterinary.vets
    @hours = []
    8.times do |i|
      @hours.append("#{9 + i}:00")
    end
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to @appointment
    else
      render :new
    end

    def taken?(date, hour)
      @vet = Vet.find(params[:vet_id])
      taken = false
      @vet.appointments.each do |appointment|
        taken = true if appointment.date == datetime
      end
      return taken
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :hour, :pet_id, :vet_id)
  end
end
