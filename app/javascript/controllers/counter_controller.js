import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["show"]

  connect() {
    console.log('Hello, Counter!')
    console.log('Hello', this.showTarget.innerText)
  }

  increaseCounter(){
    let count = parseInt(this.showTarget.innerText)
    count = count + 1
    console.log('count: ', count)
    this.saveInDatabase(count)
  }

  saveInDatabase(value){
    Rails.ajax({
      url: 'action',
      type: 'POST',
      success: (data) => {
        this.showTarget.innerHTML = value
      },
    });
  }
}
