// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function () {
  $('.see-own').on('click', function (){
    $('.own-raffles').show()
    $('.bought-raffles').hide()
    $('.processing-raffles').hide()
  });
  $('.see-bought').on('click', function (){
    $('.own-raffles').hide()
    $('.bought-raffles').show()
    $('.processing-raffles').hide()
  });
  $('.see-processing').on('click', function (){
    $('.own-raffles').hide()
    $('.bought-raffles').hide()
    $('.processing-raffles').show()
  });
  $('.see-info').on('click', function (){
    $('.see-info').addClass('active')
    $('.see-followers').removeClass('active')
    $('.see-following').removeClass('active')
    $('.info').show()
    $('.followers').hide()
    $('.following').hide()
  });
  $('.see-followers').on('click', function (){
    $('.see-info').removeClass('active')
    $('.see-followers').addClass('active')
    $('.see-following').removeClass('active')
    $('.info').hide()
    $('.followers').show()
    $('.following').hide()
  });
  $('.see-following').on('click', function (){
    $('.see-info').removeClass('active')
    $('.see-followers').removeClass('active')
    $('.see-following').addClass('active')
    $('.info').hide()
    $('.followers').hide()
    $('.following').show()
  });
  $('.defaultOpen').click();
});
