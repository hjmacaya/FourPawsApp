import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="veterinary-view"
export default class extends Controller {
  static targets = ["button", "personal", "registros", "mascotas" ]
  connect() {
    console.log("Conectado")
  }
  open(event) {
    let info = document.getElementById(event.currentTarget.dataset.infoData)
    const array = [this.personalTarget, this.registrosTarget, this.mascotasTarget]
    array.forEach(element => {
      element.classList.add("d-none")
    });
    info.classList.toggle("d-none")
    this.buttonTargets.forEach(element => {
      element.classList.remove("active")
    });
    event.currentTarget.classList.add("active")
  }
}
