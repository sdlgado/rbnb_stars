const rate = () => {
  const star = document.querySelectorAll('.etoile-input');
  const rating = document.getElementById('review_rating')
  star.forEach((star) => {
    star.addEventListener('click', (event) => {
      rating.value = event.currentTarget.dataset.count;
    });
  });
};

const rateIndicator = () => {
  const starOne = document.getElementById("label-one");
  const starTwo = document.getElementById("label-two");
  const starThree = document.getElementById("label-three");
  const starFour = document.getElementById("label-four");
  const starFive = document.getElementById("label-five");
  const indic = document.getElementById("indicateur");
  if (starOne && starTwo && starThree && starFour && starFive) {
    starOne.addEventListener("mouseover", () => {
      indic.innerText = 'As disappointing as the last fashion week';
    });
    starTwo.addEventListener("mouseover", () => {
      indic.innerText = 'It was ok but I get the same results when working out';
    });
    starThree.addEventListener("mouseover", () => {
      indic.innerText = "Preety good";
    });
    starFour.addEventListener("mouseover", () => {
      indic.innerText = 'It is a real game changer!';
    });
    starFive.addEventListener("mouseover", () => {
      indic.innerText = 'Amazing! I was the brightest of all stars indeed';
    });
  }
};

export { rate, rateIndicator };
