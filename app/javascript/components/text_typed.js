import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed-js', {
    strings: ["Head - Gad Elmaleh's Eyes", "Bust - Jason Statham's Abs", "Los Angeles - Cardi B, Queen B, and more"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
