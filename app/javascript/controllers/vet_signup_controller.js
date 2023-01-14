import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="vet-signup"
export default class extends Controller {
  static targets = ["steps"]

  connect() {
    console.log(this.stepsTarget.getElementsByClassName("step"))
  }
}
