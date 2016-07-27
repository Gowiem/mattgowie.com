$(document).ready(function() {
  var $rollover = $('.the-rollover'),
      $climbingImg = $('.climbing-img'),
      $mainImg = $('.main-img');

  // Return early when on Mobile
  if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
    return;
  }

  $rollover.mouseenter(function() {
    $mainImg.toggleClass('transparent');
  }).mouseleave(function() {
    $mainImg.toggleClass('transparent');
  });
});
