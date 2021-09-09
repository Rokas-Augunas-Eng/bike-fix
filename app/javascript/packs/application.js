import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { navbar } from '../components/navbar.js';
import { bottombar } from '../components/bottombar';
import { confirmation } from '../components/confirmation.js';
import { initChatroomCable } from '../channels/chatroom_channel.js';
import { initFlatpickr } from "../plugins/init_flatpickr";
// import { review } from '../components/review.js';

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  navbar();
  confirmation();
  bottombar();
  initChatroomCable();
  initFlatpickr();
  // review()
});

