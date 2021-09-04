import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { navbar } from '../components/navbar.js';
import { review } from '../components/review.js';
import { confirmation } from '../components/confirmation.js';

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  navbar();
  // review()
  confirmation();
});
