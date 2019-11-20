import "bootstrap";
import "../plugins/flatpickr";
import {toggleDateInputs} from "../plugins/flatpickr"
import $ from 'jquery';
import { initCarousel } from '../components/carousel';
import { navbarTransparent } from '../components/navbar';

toggleDateInputs();
navbarTransparent();
