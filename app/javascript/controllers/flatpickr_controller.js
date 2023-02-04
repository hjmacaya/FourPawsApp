import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "date" ]
  connect() {
    flatpickr(this.dateTarget, {
            enableDate: true,
            minDate: "today",
            maxDate: new Date().fp_incr(14) // 14 days from now,
            
            })
  }
}
