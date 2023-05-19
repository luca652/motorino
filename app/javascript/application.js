// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

console.log("hello")

$("input.datepicker").each(function(input) {
  $(this).datepicker({
    minDate: 0,
    maxDate: "+12M",
    dateFormat: "dd-mm-yy",
    altField: $(this).next()
  })
})
