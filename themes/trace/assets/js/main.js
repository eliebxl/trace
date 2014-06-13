jQuery(document).ready(function ($) {
  $('.event-filter').change(function () {
    if ($(this).val() != '') {
      window.location.href = $(this).val();
    }
  });
  
  function setCoverHeight (height) {
    $('.event-cover').height(height - 150);
  }
  
  $(window).resize(function () {
    setCoverHeight($(window).height());
  });
  
  setCoverHeight($(window).height());
});