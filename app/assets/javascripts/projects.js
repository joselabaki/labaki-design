

$( document ).on('turbolinks:load', function() {

$('#project-span').hover(
  function() {
$('.nav-inner').slideDown()})

$('.projects-nav').mouseleave(
  function() {
$('.nav-inner').slideUp()})



});
