$( document ).on('turbolinks:load', function() {


$('#hamburger').click(function(){
  $('.inner-navigation').slideDown('slow');
  $(this).addClass('invisible')
  $('#close').removeClass("invisible")

});



$('#close').click(function(){$('.inner-navigation').slideUp('slow')
$(this).addClass('invisible')
$('#hamburger').removeClass("invisible")

});

$('#inner-projects').click(function(){$('.inner-projects').slideDown('slow')});






});
