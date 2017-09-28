
$(document).on('turbolinks:load', function() {
  $(function () {
    var $item = $('.carousel .item'); 
    var $wHeight = $(window).height();
    $item.eq(0).addClass('active');
    $item.height($wHeight); 
    $item.addClass('full-screen');

    $('.carousel img').each(function() {
      var $src = $(this).attr('src');
      var $color = $(this).attr('data-color');
      $(this).parent().css({
        'background-image' : 'url(' + $src + ')',
        'background-color' : $color
      });
      $(this).remove();
    });

    $(window).on('resize', function (){
      $wHeight = $(window).height();
      $item.height($wHeight);
    });

    $('.carousel').carousel({
      interval: 6000,
      pause: "false"
    });
  });

  $(document).ready(function() {
    var carusel = document.getElementById('mycarousel');
    var navbar = document.getElementById('nav')
    if (carusel == null && navbar !== null) {
      navbar.style.backgroundColor = "white";
    }
  });
});