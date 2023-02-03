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
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.vet_id = params[:vet_id]

    if @appointment.save
      redirect_to @appointment
    else
      render :new
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:start_time, :end_time, :pet_id, :vet_id)
  end
end
