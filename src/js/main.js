(function() {

  var isMobile = function() {
    return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
  }

  var addRolloverEffect = function() {
    var $rollover = $('.the-rollover'),
        $climbingImg = $('.climbing-img'),
        $mainImg = $('.main-img');

    $rollover.mouseenter(function() {
      if (isMobile()) { return; }
      $mainImg.toggleClass('transparent');
    }).mouseleave(function() {
      if (isMobile()) { return; }
      $mainImg.toggleClass('transparent');
    });
  }

  var addCurrentLocation = function() {
    var $currentLocation = $('.current-location'),
        $pin = $('.pin');
    $.getJSON('https://docker-micro.mattgowie.com/last_location', function(data) {
      var city = data['city'],
          country = data['country'],
          countryLong = data['country_long'],
          gmapUrl = "https://www.google.com/maps/place/" + data['latitude'] + ',' + data['longitude'],
          currentLocText;

      if ((countryLong.length + city.length + 2) > 20) {
        currentLocText = city + ", " + country;
      } else {
        currentLocText = city + ", " + countryLong;
      }

      $currentLocation.text(currentLocText);
      $currentLocation.wrap("<a href='" + gmapUrl + "' title='Google Maps link to my current location' target='_blank'></a>");
      $pin.removeClass('hidden');
    });
  }

  $(document).ready(function() {
    addRolloverEffect();
    addCurrentLocation();
  });
})();
