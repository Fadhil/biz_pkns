$(document).ready(function(){
  survey_program_select = $('#survey_program_select')
  survey_program_select.change(function(){
  survey_course_select = $('#survey_course_select')
    $.ajax({
      type: 'GET',
      url: '/course_dropdown',
      data: {program_id: survey_program_select.val() },
      success: function (response) {
        survey_course_select.html(response);
      }
    });
  });
});

$(document).ready(function(){
  $('#survey_user_select').change(function(){
    survey_program_select = $('#survey_program_select')
    survey_course_select = $('#survey_course_select')
    if($(this).val()=='users_by_program') {
      survey_program_select.prop('disabled', false);
      survey_program_select.show();
      $('.survey_program_select_field').removeClass('hide')
      survey_course_select.hide();
      $('.survey_course_select_field').addClass('hide')
      survey_course_select.prop('disabled', true)
    }else if($(this).val() == 'users_by_course') {
      survey_program_select.prop('disabled', false);
      survey_program_select.show();
      $('.survey_program_select_field').removeClass('hide')
      survey_course_select.prop('disabled', false);
      survey_course_select.show();
      $('.survey_course_select_field').removeClass('hide')
    } else {
      survey_program_select.prop('disabled', true);
      survey_program_select.hide();
      $('.survey_program_select_field').addClass('hide')
      survey_course_select.prop('disabled', true);
      survey_course_select.hide();
      $('.survey_course_select_field').addClass('hide')

    }
  });
});

$(document).ready(function(){
  newsletter_program_select = $('#newsletter_program_select')
  newsletter_program_select.change(function(){
  newsletter_course_select = $('#newsletter_course_select')
    $.ajax({
      type: 'GET',
      url: '/course_dropdown',
      data: {program_id: newsletter_program_select.val() },
      success: function (response) {
        newsletter_course_select.html(response);
      }
    });
  });
});

$(document).ready(function(){
  $('#newsletter_user_select').change(function(){
    newsletter_program_select = $('#newsletter_program_select')
    newsletter_course_select = $('#newsletter_course_select')
    if($(this).val()=='users_by_program') {
      newsletter_program_select.prop('disabled', false);
      newsletter_program_select.show();
      newsletter_course_select.hide();
      newsletter_course_select.prop('disabled', true)
    }else if($(this).val() == 'users_by_course') {
      newsletter_program_select.prop('disabled', false);
      newsletter_program_select.show();
      newsletter_course_select.prop('disabled', false);
      newsletter_course_select.show();
    } else {
      newsletter_program_select.prop('disabled', true);
      newsletter_program_select.hide();
      newsletter_course_select.prop('disabled', true);
      newsletter_course_select.hide();

    }
  });
});

$(document).ready(function(){
  letter_program_select = $('#letter_program_select')
  letter_program_select.change(function(){
  letter_course_select = $('#letter_course_select')
    $.ajax({
      type: 'GET',
      url: '/course_dropdown',
      data: {program_id: letter_program_select.val() },
      success: function (response) {
        letter_course_select.html(response);
      }
    });
  });
});

$(document).ready(function(){
  $('#letter_user_select').change(function(){
    letter_program_select = $('#letter_program_select')
    letter_course_select = $('#letter_course_select')
    if($(this).val()=='users_by_program') {
      letter_program_select.prop('disabled', false);
      letter_program_select.show();
      letter_course_select.hide();
      letter_course_select.prop('disabled', true)
    }else if($(this).val() == 'users_by_course') {
      letter_program_select.prop('disabled', false);
      letter_program_select.show();
      letter_course_select.prop('disabled', false);
      letter_course_select.show();
    } else {
      letter_program_select.prop('disabled', true);
      letter_program_select.hide();
      letter_course_select.prop('disabled', true);
      letter_course_select.hide();

    }
  });
});



