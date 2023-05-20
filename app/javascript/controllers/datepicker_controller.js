import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    console.log("hello");

    $("input.datepicker").each(function(input) {
      $(this).datepicker({
        minDate: 0,
        maxDate: "+12M",
        dateFormat: "dd-mm-yy",
        altField: $(this).next()
      })
    })
  }
}
