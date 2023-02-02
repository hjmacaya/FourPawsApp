import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calendar"
export default class extends Controller {
  static targets = [ "date", "output" ]
  connect() {
    console.log("Hello, Stimulus!", this.element)
  }

  show_day_hours() {
    console.log("Fecha:", this.dateTarget.textContent)
    this.outputTarget.textContent = "Hello, Stimulus!"
  }
}
