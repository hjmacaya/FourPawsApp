class AnimalTypesController < ApplicationController
  skip_before_action :authenticate_user!
  def new
  end

  def create
  end

  def index
    @animal_types = AnimalType.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
