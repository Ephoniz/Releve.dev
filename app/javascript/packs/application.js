// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  
  document.addEventListener('scroll', () => {
    console.log(scroll);
    const navbar = document.querySelector(".navbar");
      if (window.pageYOffset >= 50) {
        navbar.style.backgroundColor = "white";
        navbar.style.transition = "all 0.25s";
      } else {
        navbar.style.backgroundColor = "transparent";
      }
  });
});


const url = "https://www.udemy.com/api-2.0/courses/?page=2&page_size=12&search=html"


fetch(url, {
  headers: {
    "Accept": "application/json, text/plain, */*",
    "Authorization": "Basic Zkd5S2xsZXZsVm5HcE9ITTh4YzdBR3ZWVk0zMDlQTXdqVE05c2hHeDo0RmhKbDJ1TFdOWVZNZGlUc1ZhRkhTRVkyclFuVmJldlFOejJKM09zYjk2N3ptSFJtdGxVcWczMmZ1ZGpHNThoOUN4ajZ3VGdlZUxCS0ZmdlJYWnhsczZkSk5OdmZkVTZoWjh6aHlRUUdwNzRKejUzZVdaSXZ3eVM3M093eWtqag==",
    "Content-Type": "application/json;charset=utf-8"
  }
}).then(response => response.json())
  .then((data) => {
    console.log(data)
  });

