import { Controller } from "@stimulus";

export default class extends Controller {
  static target = "link"

  increaseCounter(event) {

    let count;
    count++
    this.linkTarget.insertAdjacentHTML = `Personas que se han contactado: ${count}`
  }
}
