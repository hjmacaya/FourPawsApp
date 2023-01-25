class VetPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def vet_home
  end

  def attend_new_pet
    @pets = Pet.all
  end

  def vet_home_v2
  end

  def attended_pets
  end
end
