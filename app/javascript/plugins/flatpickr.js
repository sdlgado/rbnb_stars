import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const toggleDateInputs = function() {
  const startDateInput = document.getElementById('booking_start_date');
  const endDateInput = document.getElementById('booking_end_date');
  const unavailable = document.querySelectorAll('.unavailable-dates');
  const price = document.getElementById('booking_price');
  let unavailableDates = [];
  unavailable.forEach((date) => {
    unavailableDates.push(date.dataset.unavailable);
  });

  if (startDateInput && endDateInput) {
    endDateInput.disabled = true;
    flatpickr(startDateInput, {
    minDate: 'today',
    dateFormat: 'd-m-Y',
    disable: unavailableDates,
    dateFormat: 'Y-m-d',
    onChange: function(selectedDates, selectedDate) {
      if (selectedDate !== '') {
        const firstSelectedDate = selectedDate;
        endDateInput.disabled = false;
        const following = Number.parseInt(selectedDate.split("-")[2], 10) + 1;
        let min = selectedDate.split("-");
        min[2] = following.toString();
        min = min.join("-");
        flatpickr(endDateInput, {
          minDate: min,
          dateFormat: 'd-m-Y',
          disable: unavailableDates,
          dateFormat: 'Y-m-d',
          onChange: function(selectedDates, selectedDate) {
            let initdate = flatpickr.parseDate(firstSelectedDate, 'Y-m-d');
            let date = flatpickr.parseDate(selectedDate, 'Y-m-d');
            price.value = price.value * (date - initdate) / (1000 * 60 * 60 * 24);
          }
        });
      }
    }
    });

};
};

export { toggleDateInputs }
