// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import OwnerSignupController from "./owner_signup_controller"
application.register("owner-signup", OwnerSignupController)

import PetShowController from "./pet_show_controller"
application.register("pet-show", PetShowController)

import VetSignupController from "./vet_signup_controller"
application.register("vet-signup", VetSignupController)
