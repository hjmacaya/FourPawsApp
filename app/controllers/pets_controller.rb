class PetsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_owner!, only: %i[new create destroy]
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.owner = current_owner
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
    birthdate = @pet.birthdate
    today = Date.today
    age_years = today.year - birthdate.year
    age_months = today.month - birthdate.month
    if age_months.negative?
      age_years -= 1
      age_months = 12 - age_months.abs
    end
    @age_months = age_months
    @age_years = age_years
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to @pet
    else
      render :edit
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to show_owner_pets_path
  end

  def owner_show_pet
    @pet = Pet.find(params[:id])
    birthdate = @pet.birthdate
    today = Date.today
    age_years = today.year - birthdate.year
    age_months = today.month - birthdate.month
    if age_months.negative?
      age_years -= 1
      age_months = 12 - age_months.abs
    end
    @age_months = age_months
    @age_years = age_years
  end

  def show_pet_records
    @pet = Pet.find(params[:id])
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :birthdate, :weight, :pet_chip, :photo, :animal_type_id, records_attributes: [:name, :observation, :date, :record_type])
  end
end
