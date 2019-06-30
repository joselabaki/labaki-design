$( document ).on('turbolinks:load', function() {
console.log("ready");

$('#project-span').hover(
  function() {
$('.nav-inner').slideDown()})

$('.projects-nav').mouseleave(
  function() {
$('.nav-inner').slideUp()})



});
