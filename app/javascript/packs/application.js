import "bootstrap";
import "../plugins/flatpickr";
import { toggleDateInputs } from "../plugins/flatpickr"
import $ from 'jquery';
import { navbarTransparent } from '../components/navbar';
import { loadDynamicBannerText } from '../components/text_typed';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { initUpdateNavbarOnScroll } from '../components/scroll-navbar';
import { rate } from '../components/rating';
import { rateIndicator } from '../components/rating';
import { initAutocomplete } from '../plugins/init_autocomplete.js';
toggleDateInputs();
loadDynamicBannerText();
navbarTransparent();
initUpdateNavbarOnScroll();
initMapbox();
loadDynamicBannerText();
rate();
rateIndicator();
initAutocomplete();