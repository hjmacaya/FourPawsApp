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
    @vet = Vet.find(params[:vet])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to @appointment
    else
      render :new
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:time, :doctor_id, :patient_id)
  end
end
