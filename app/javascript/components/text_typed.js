import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('#typed-js');
  if (banner) {
    new Typed('#typed-js', {
      strings: ["Head", "Head Eyes", "Bust  Jason Statham  Abs", "Los Angeles  Cardi B", "And more !"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
