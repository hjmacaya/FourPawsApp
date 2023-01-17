import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="vet-signup"
export default class extends Controller {
  static targets = ["steps"]

  // Set the default varaibles
  currentStep = 0


  connect() {
    console.log(this.stepsTarget.getElementsByClassName("step"))
  }

  nextPrev(n) {

  }
}
