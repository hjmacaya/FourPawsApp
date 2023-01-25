import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pet-show"
export default class extends Controller {
  static targets = [ "everysection", "info", "records", "appointments", "notifications" ]
  open(event) {
    let info = document.getElementById(event.currentTarget.dataset.infoData)
    const array = [this.infoTarget, this.recordsTarget, this.appointmentsTarget, this.notificationsTarget]
    array.forEach(element => {
      element.classList.add("d-none")
    });
    info.classList.toggle("d-none")
}
}
