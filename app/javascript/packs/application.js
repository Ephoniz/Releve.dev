// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import { initChatroomCable } from "channels/chatroom_channel.js"

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
  initChatroomCable();

  document.addEventListener('scroll', () => {
    console.log(scroll);
    const navbar = document.querySelector(".navbar");
    const navbarLogo = document.querySelector(".navbar-logo");

      if (window.pageYOffset >= 50) {
        navbar.style.backgroundColor = "white";
        navbar.style.transition = "all 0.25s";
        navbarLogo.style.backgroundColor = "transparent";
      } else {
        navbar.style.backgroundColor = "transparent";
      }
  });

  const course = document.getElementById('new_enrolment')

  course.addEventListener('submit', () => {
    window.open(course.attributes.data.value, '_blank');
  });

  
});
