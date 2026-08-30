import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["passenger", "list", "template"];
  static values = { count: Number };
  add() {
    const newIndex = this.countValue++;

    let html = this.templateTarget.innerHTML;
    html = html.replaceAll("NEW", newIndex);
    this.listTarget.innerHTML += html;
    this.renumber();
  }
  remove(event) {
    if (this.passengerTargets.length > 1) {
      event.target.parentElement.remove();
      this.renumber();
    }
  }
  renumber() {
    this.passengerTargets.forEach((passenger, index) => {
      passenger.querySelector("h3").textContent = `Passenger ${index + 1}`;
    });
  }
}
