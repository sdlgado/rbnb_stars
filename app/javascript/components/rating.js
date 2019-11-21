const rate = () => {
  const star = document.querySelectorAll('.etoile-input');
  const rating = document.getElementById('review_rating')
  star.forEach((star) => {
    star.addEventListener('click', (event) => {
      rating.value = event.currentTarget.dataset.count;
    });
  });
};

export { rate };
