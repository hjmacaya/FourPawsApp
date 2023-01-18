import { Controller } from "@hotwired/stimulus"

// Create varaibles that'll be used in the
// controller
let currentStep = 0;

// Connects to data-controller="owner-signup"
export default class extends Controller {
  static targets = ["steps"]

  showStep(n) {
    let x = this.stepsTarget.getElementsByClassName("step")
    x[n].style.display = "block"

    // Show and hide respectives components
    if (n == 0) {
      document.getElementById("prevBtn").style.display = "none"
      document.getElementById("signupBtn").style.display = "none"
      document.getElementById("nextBtn").style.display = "inline"
    } else {
      document.getElementById("prevBtn").style.display = "inline"
      document.getElementById("nextBtn").style.display = "none"
      document.getElementById("signupBtn").style.display = "inline"
    }
  }

  nextPrev(event) {
    let x = this.stepsTarget.getElementsByClassName("step")
    // Hide the current step
    x[currentStep].style.display = "none"
    // Increase or decrase the current step
    currentStep = currentStep + event.params.n
    // Otherwise diplay current step
    this.showStep(currentStep)
  }

  connect() {
    this.showStep(currentStep)
  }
}
