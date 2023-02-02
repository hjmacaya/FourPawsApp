import flatpickr from "flatpickr";
import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calendar"
export default class extends Controller {
  connect() {
    flatpickr(this.input, {
      enableTime: true,
      onChange: this.onChange.bind(this),
      inline: true,
      mode: "range",
      dateFormat: "Y-m-d H:i"
    });
  }

  onChange(selectedDates) {
    const startDate = selectedDates[0];
    const endDate = selectedDates[1];
  }
}
