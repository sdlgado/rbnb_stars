import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const toggleDateInputs = function() {
  const startDateInput = document.getElementById('booking_start_date');
  const endDateInput = document.getElementById('booking_end_date');
  const unavailable = document.querySelectorAll('.unavailable-dates');
  let unavailableDates = [];
  unavailable.forEach((date) => {
    unavailableDates.push(date.dataset.unavailable);
  });
  console.log(unavailableDates);


  if (startDateInput && endDateInput) {
    endDateInput.disabled = true;
    flatpickr(startDateInput, {
    minDate: 'today',
    dateFormat: 'd-m-Y',
    disable: unavailableDates,
    dateFormat: 'Y-m-d',
    onChange: function(selectedDates, selectedDate) {
      if (selectedDate !== '') {
        endDateInput.disabled = false;
        const following = Number.parseInt(selectedDate.split("-")[2], 10) + 1;
        let min = selectedDate.split("-");
        min[2] = following.toString();
        min = min.join("-");
        console.log(min)
        flatpickr(endDateInput, {
          minDate: min,
          dateFormat: 'd-m-Y',
          disable: unavailableDates,
          dateFormat: 'Y-m-d',
        });
      }
    }
    });

};
};

export { toggleDateInputs }
