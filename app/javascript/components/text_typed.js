import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('typed-js');
  if (banner) {
    new Typed('#typed-js', {
      strings: ["Beach", "Sand", "Trees", "Los Angeles Beach", "And more !"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
