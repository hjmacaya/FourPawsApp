class RecordsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @pet = Pet.find(params[:pet_id])
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    @pet = Pet.find(params[:pet_id])
    @record.vet = current_vet
    @record.pet = @pet
    if @record.save
      redirect_to record_path(@record)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    records = Record.all
    @current_veterinary = current_vet.veterinary
    @records = records.select { |record| record.vet.veterinary == @current_veterinary }
  end

  def show
    @record = Record.find(params[:id])
    @pet = @record.pet
  end

  def edit
    @record = Record.find(params[:id])
    @pet = @record.pet
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      redirect_to @record
    else
      render :edit
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to records_path
  end

  private

  def record_params
    params.require(:record).permit(:name, :observation, :date, :record_type_id)
  end
end
