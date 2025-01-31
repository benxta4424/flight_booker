import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-passager.js"
export default class extends Controller {
  static targets=["passager"]
  greet() {
    this.stuffTarget.textContent="Seennnerrii"
    
  }
}
