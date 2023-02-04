import { Controller } from "@hotwired/stimulus"
window.bootstrap = require('bootstrap/dist/js/bootstrap.bundle.js');

let currentBtn = "";

// Connects to data-controller="owner-sidebar-buttons"
export default class extends Controller {
  static targets = ["btnList", "divContent"]

  connect() {
    console.log("Conectado al controlador de la owner-sidebar")
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
  }

  showView(event) {
    // First we mark as active-sidebar the clicked button
    if (currentBtn !== event.currentTarget) {
      this.removeActive()
      currentBtn = event.currentTarget
      currentBtn.classList.add("active-owner-sidebar")
    }

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
    let btns = document.querySelectorAll(".owner-sidebar-btn")
    console.log(btns)
    btns.forEach(button => {
      if (button.classList.contains("active-owner-sidebar")) {
        button.classList.remove("active-owner-sidebar")
      }
    })
  }
}
