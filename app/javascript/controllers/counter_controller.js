import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["show"]
  static values = {
    id: String
  };

  connect() {
    console.log('>>>>', this.idValue)
    console.log('Hello', this.showTarget.innerText)
  }

  increaseCounter(){
    let count = parseInt(this.showTarget.innerText)
    count = count + 1
    console.log('count: ', count)
    this.saveInDatabase(count)
  }

  saveInDatabase(value) {
    fetch(`/publications/${this.idValue}/increase_counter`,
      {
        method: 'GET',
      })
      .then((response) => response.json())
      .then((data) => {
        const newValue = data.new_counter
        console.log(">>>>>", data, " >>>> ", newValue)
        this.showTarget.innerHTML = newValue
        })
  }
}
