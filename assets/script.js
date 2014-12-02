/*
 * :)
 */

$(function () {
  $(window).on('scroll', function () {
    var y = $(window).scrollTop();
    $(".top-navbar").toggleClass("-fixed", y > 530);
  });
});

$(function () {
  new WOW({ offset: 100 }).init();
});
