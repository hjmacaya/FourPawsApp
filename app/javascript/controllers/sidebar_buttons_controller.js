import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sidebar-buttons"
export default class extends Controller {
  static targets = ["btnList", "divContent"]

  connect() {
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
  }

  showView(event) {
    // First we mark as active the clicked button
    this.removeActive()
    event.currentTarget.classList.add("active")

    // Second we hide all views
    // let views = document.querySelectorAll(".content-view")
    // views.forEach(div => {
    //   if (!div.classList.contains("d-none")) {
    //     this.hideElement(div)
    //   }
    // })

    // // Then, we show the view that was clicked
    // let selectedDiv = document.getElementById(event.params.viewtoshow)
    // selectedDiv.classList.remove("d-none")
  }

  hideElement(element) {
    element.classList.add("d-none")
  }

  showElement(element) {
    element.classList.remove("d-none")
  }

  removeActive () {
    let btns = document.querySelectorAll(".sidebar-btn")
    btns.forEach(button => {
      if (button.classList.contains("active")) {
        button.classList.remove("active")
      }
    })
  }
}
