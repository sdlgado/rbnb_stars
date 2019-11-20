const navbar = document.querySelector('.navbar');
const banner = document.getElementById('banner-hp');

const navbarTransparent = () => {
  console.log(banner);
  if (banner) {
    navbar.classList.add('transparent-navbar');
  }
}

export { navbarTransparent }
