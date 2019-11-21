import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed-js', {
    strings: ["Head  Gad Elmaleh Eyes", "Bust  Jason Statham  Abs", "Los Angeles  Cardi B", "and more"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
