import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["passenger", "list", "template"];
  static values = { count: Number };
  add() {
    const newIndex = this.countValue++;
    let html = this.templateTarget.innerHTML;
    html = html.replaceAll("NEW", newIndex);
    this.listTarget.innerHTML += html;
  }
  remove(event) {
    if (this.passengerTargets.length > 1) {
      event.target.parentElement.remove();
    }
  }
}
