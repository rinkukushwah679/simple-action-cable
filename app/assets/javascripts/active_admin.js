//= require active_admin/base
document.addEventListener('DOMContentLoaded', function() {
  var addressInput = document.querySelector('.address-autocomplete');
  if (addressInput) {
    var autocomplete = new google.maps.places.Autocomplete(addressInput);
  }
});