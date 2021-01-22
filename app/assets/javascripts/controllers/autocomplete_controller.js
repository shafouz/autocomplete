import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "query", "autocomplete" ]

  connect() {
    console.log("connected")
  }

  disconnect() {
    this.reset()
  }

  handleVisibility() {
    this.autocompleteTarget.style.visibility = "visible"

    if (this.queryTarget.value == "") {
      this.autocompleteTarget.style.visibility  = "hidden";
    }
  }

  query() {
    this.handleVisibility()

    setTimeout(() => {
      this.element.requestSubmit();
    }, 100)
  }

}
