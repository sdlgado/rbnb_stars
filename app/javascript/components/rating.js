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
      indic.innerText = "It wasn't even sunny…";
    });
    starTwo.addEventListener("mouseover", () => {
      indic.innerText = "It was ok but I have better at home";
    });
    starThree.addEventListener("mouseover", () => {
      indic.innerText = "Pretty good";
    });
    starFour.addEventListener("mouseover", () => {
      indic.innerText = "Great holidays under the sun!";
    });
    starFive.addEventListener("mouseover", () => {
      indic.innerText = "Amazing! I am going back next week";
    });
  }
};

export { rate, rateIndicator };
