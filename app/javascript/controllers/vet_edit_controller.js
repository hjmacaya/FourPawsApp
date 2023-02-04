import { Controller } from "@hotwired/stimulus"

// Setting loginView as default
let currentView = 0

// Connects to data-controller="vet-edit"
export default class extends Controller {
  connect() {
    console.log("Connected to vet-edit-controller")
    this.setActiveClass(currentView)
    this.displayStep(currentView)
  }

  displayStep(n) {
    // Get all steps
    let steps = document.querySelectorAll(".step-edit")

    // Hide all steps
    steps.forEach(div => {
      if (!div.classList.contains("d-none")) {
        div.classList.add("d-none")
      }
    })

    // Show the selected one
    steps[n].classList.remove("d-none")
  }

  nextStep(event) {
    // Set the active class to the button
    currentView = event.params.n
    this.setActiveClass(currentView)

    // Show the content
    this.displayStep(currentView)
  }

  setActiveClass (n) {
    // Remove active class from btns
    this.removeActive()

    // Add the active class to current btn
    if (n === 0) {
      document.getElementById("loginBtn").classList.add("active-btn")
    }
    else if (n === 1) {
      document.getElementById("veterinaryBtn").classList.add("active-btn")
    }
    else {
      document.getElementById("additionalBtn").classList.add("active-btn")
    }
  }

  removeActive () {
    let btns = document.querySelectorAll(".btn-vet-edit")
    btns.forEach(btn => {
      btn.classList.remove("active-btn")
    })

    console.log(document.querySelectorAll(".btn-vet-edit"))
  }
}
