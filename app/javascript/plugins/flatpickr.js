import flatpickr from "flatpickr"
import "flatpickr/dist/themes/light.css" // Note this is important!

flatpickr(".datepicker", {
  dateFormat: "d-m-y",
  minDate: "today"
  // altInput: true,
  // allowInput: true
})
