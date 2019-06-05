//= require rails-ujs
//= require_tree .
var iframe = document.querySelector("#florist-map");
if (iframe) {
  navigator.geolocation.getCurrentPosition(function(location) {
   var lat = location.coords.latitude;
   var lng = location.coords.longitude;
   var latlng = lat + "," + lng;
   var url = `https://www.google.com/maps/embed/v1/search?key=AIzaSyDGE74FeKy-wiLTRwCOOdSj0UEa5kmPhO0&q=fleuristes&zoom=14&center=${latlng}`
   var iframe = document.querySelector("#florist-map");
   var src = iframe.getAttribute('src');
   iframe.setAttribute("src", url);
  });
}
