import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#yped-js', {
    strings: ["Head - Gad Elmaleh's Eyes", "Nicki Minaj's Butt", "Jason Statham's Abs"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
