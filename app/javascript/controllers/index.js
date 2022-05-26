// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))

// let counterDisplayElem = document.querySelector('.count');
// let counterPlusElem = document.querySelector('.link');

// let count = 0;

// updateDisplay();

// counterPlusElem.addEventListener("click", () => {
//   count++;
//   updateDisplay();
// });

// function updateDisplay() {
//   counterDisplayElem.innerHTML = count;
// };
