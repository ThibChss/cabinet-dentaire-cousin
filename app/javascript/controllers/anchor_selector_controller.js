import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="anchor-selector"
export default class extends Controller {
  static targets = [
    'anchor'
  ]

  connect() {
    this.selectAnchor()
  }

  selectAnchor(event = null) {
    const selectedHash = window.location.hash.slice(1)

    this.anchorTargets.forEach(anchor => {
      if (event) {
        const link = event.target.dataset.idTarget

        if (link === anchor.id) {
          anchor.classList.add('selected')
        } else {
          anchor.classList.remove('selected')
        }

        return
      } else if (selectedHash === anchor.id) {
        anchor.classList.add('selected')
      } else {
        anchor.classList.remove('selected')
      }
    })
  }
}
