

$( document ).on('turbolinks:load', function() {

$('#project-span').click(
  function() {
$('.nav-inner').slideDown()})

$('.projects-nav').mouseleave(
  function() {
$('.nav-inner').slideUp()})



});
