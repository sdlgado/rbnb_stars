import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('typed-js');
  if (banner) {
    new Typed('#typed-js', {
      strings: ["Head - Gad Elmaleh's Eyes", "Bottom - Nicki Minaj's Butt", "Bust - Jason Statham's Abs"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
