import "bootstrap";
import "../plugins/flatpickr";
import {toggleDateInputs} from "../plugins/flatpickr"
import $ from 'jquery';
import { initCarousel } from '../components/carousel';
import { navbarTransparent } from '../components/navbar';

toggleDateInputs();
navbarTransparent();


import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
