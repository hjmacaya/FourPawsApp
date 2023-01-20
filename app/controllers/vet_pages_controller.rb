class VetPagesController < ApplicationController
  skip_before_action :authenticate_user!
  def vet_home
  end

  def attend_new_pet
    @pets = Pet.all
  end
end
