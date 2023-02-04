import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="vet-pet-show"
export default class extends Controller {
  static targets = [ "records", "appointments", "options" ]

  open(event) {
    let info = document.getElementById(event.currentTarget.dataset.infoData)
    const array = [this.recordsTarget, this.appointmentsTarget, this.optionsTarget]
    array.forEach(element => {
      element.classList.add("d-none")
    });
    info.classList.toggle("d-none")
  }

  connect() {
    console.log("Conectado al controlador de vet show pet")
  }
}
