$(document).ready(function() {
  loadCarousel();
});

function loadCarousel() {
  $('.carousel-item').each(function() {
    var index = $(this).index(0);
    if (index == 0) {
      $(this).addClass('active');
    }
  });
}