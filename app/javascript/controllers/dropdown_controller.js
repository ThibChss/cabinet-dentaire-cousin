import { Controller } from "@hotwired/stimulus"
import { useClickOutside } from 'stimulus-use'

// Connects to data-controller="dropdown"
export default class extends Controller {

  static targets = [
    'menu',
    'burger'
  ]

  connect() {
    useClickOutside(this)
  }

  clickOutside(event) {
    this.menuTarget.classList.remove('active')
    this.burgerTarget.checked = false
  }

  toggleDropdown() {
    this.menuTarget.classList.toggle('active')
  }
}
