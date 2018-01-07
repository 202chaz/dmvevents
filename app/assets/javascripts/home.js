$(document).ready(function() {
  loadCarousel();
});

function initCarousel() {
  setTimeout(function() {
    loadCarousel();
    $('.carousel').carousel()
  },400);
}

function loadCarousel() {
  $('.carousel-item').each(function() {
    var index = $(this).index(0);
    if (index == 0) {
      $(this).addClass('active');
    }
  });
}