// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function () {
  $('tf').hide()
  var id_user = $('tf').text().trim();
  $('.see-own').on('click', function (){
    $('.see-own').addClass('active')
    $('.see-bought').removeClass('active')
    $('.see-processing').removeClass('active')
    $.ajax({
    url: id_user + "/own",
    success: function (data) { $('.own-raffles').append(data).show(); },
    dataType: 'html'
});
    $('.bought-raffles').empty().hide()
    $('.processing-raffles').empty().hide()
  });
  $('.see-bought').on('click', function (){
      $('.see-own').removeClass('active')
      $('.see-bought').addClass('active')
      $('.see-processing').removeClass('active')
    $('.own-raffles').empty().hide()
    $.ajax({
    url: id_user + "/bought",
    success: function (data) { $('.bought-raffles').append(data).show(); },
    dataType: 'html'
});
    $('.processing-raffles').empty().hide()
  });
  $('.see-processing').on('click', function (){
      $('.see-own').removeClass('active')
      $('.see-bought').removeClass('active')
      $('.see-processing').addClass('active')
    $('.own-raffles').empty().hide()
    $('.bought-raffles').empty().hide()
    $.ajax({
    url: id_user + "/processing",
    success: function (data) { $('.processing-raffles').append(data); },
    dataType: 'html'
});
    $('.processing-raffles').show()
  });
  $('.see-info').on('click', function (){
    $('.see-info').addClass('active')
    $('.see-followers').removeClass('active')
    $('.see-following').removeClass('active')
    $('.profile-info').show()
    $('.followers').hide()
    $('.following').hide()
  });
  $('.see-followers').on('click', function (){
    $('.see-info').removeClass('active')
    $('.see-followers').addClass('active')
    $('.see-following').removeClass('active')
    $('.profile-info').hide()
    $('.followers').show()
    $('.following').hide()
  });
  $('.see-following').on('click', function (){
    $('.see-info').removeClass('active')
    $('.see-followers').removeClass('active')
    $('.see-following').addClass('active')
    $('.profile-info').hide()
    $('.followers').hide()
    $('.following').show()
  });
  $('.defaultOpen').click();
});
