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

function adjustEmbedVideosSize() {
  var newVid = $('#post_embed_files').val().replace('width="560"', 'width="1052"').replace('height="315"', 'height="591"');
  $('#post_embed_files').empty();
  $('#post_embed_files').text(newVid);

}
