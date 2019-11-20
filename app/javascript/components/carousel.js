import Siema from 'siema';

const initCarousel = () => {
  const mySiema = new Siema({
    selector: ".siema",
    perPage: 3,
    duration: 30,
    loop: true,
    easing: 'ease-out',
  });
  setInterval(() => mySiema.next(), 4000)
  const mySiema2 = new Siema({
    selector: ".siema2",
    perPage: 3,
    duration: 30,
    loop: true,
    easing: 'ease-out',
  });
  setInterval(() => mySiema2.next(), 4000)
  const mySiema3 = new Siema({
    selector: ".siema3",
    perPage: 3,
    duration: 30,
    loop: true,
    easing: 'ease-out',
  });
  setInterval(() => mySiema3.next(), 4000)
}


export { initCarousel };
