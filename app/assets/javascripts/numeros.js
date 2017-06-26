// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function () {
  var numbers_selected = []
  $('.number-col').on('click', function () {
    if ($(this).hasClass('selected')){
        $(this).removeClass('selected')
    }
    else {
    $(this).addClass('selected')
  }
  numbers_selected.push($(this).text().trim())
  $(numbers_selected).each(function(index, item){
    console.log(item)
  })
  })

  $('.buy').on('click', function() {
    var rifa_id = $('sh').text().trim();
    $(numbers_selected).each(function(index, item){
      $.ajax({
      url: '/rifas/' + rifa_id + "/numeros/" + item,
      method: 'POST',
      data: {
        'rifa_id': rifa_id,
        'num_id': item
      },
      success: function (data) { console.log('success'); },
      dataType: 'json'
  });
})
  })
})
