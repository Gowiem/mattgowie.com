(function() {

  function isMobile() {
    return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
  }

  $(document).ready(function() {
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
  });
})();
