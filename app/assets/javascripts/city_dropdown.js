$(document).ready(function(){
  $('#user_state').change(function(){
    $.ajax({
      type: 'GET',
      url: '/city_dropdown',
      data: {state: $('#user_state').val() },
      success: function (response) {
        $('#user_city').html(response);
      }
    });
  });
});

$(document).ready(function(){
  $('#businessprofile_state').change(function(){
    $.ajax({
      type: 'GET',
      url: '/city_dropdown',
      data: {state: $('#businessprofile_state').val() },
      success: function (response) {
        $('#businessprofile_city').html(response);
      }
    });
  });
});

$(document).ready(function(){
  $('#search_state').change(function(){
    $.ajax({
      type: 'GET',
      url: '/city_dropdown',
      data: {state: $('#search_state').val() },
      success: function (response) {
        $('#search_city').html(response);
        $('#search_city').selected('');
      }
    });
  });
});




