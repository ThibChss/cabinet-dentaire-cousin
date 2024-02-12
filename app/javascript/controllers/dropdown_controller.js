import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {

  static targets = [
    'menu'
  ]
  connect() {
  }

  toggleDropdown(event) {
    this.menuTarget.classList.toggle('active')
  }
}
