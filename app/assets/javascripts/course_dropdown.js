$(document).ready(function(){
  survey_program_select = $('input[name$="program_select"]:first')
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
      survey_course_select.hide();
      survey_course_select.prop('disabled', true)
    }else if($(this).val() == 'users_by_course') {
      survey_program_select.prop('disabled', false);
      survey_program_select.show();
      survey_course_select.prop('disabled', false);
      survey_course_select.show();
    } else {
      survey_program_select.prop('disabled', true);
      survey_program_select.hide();
      survey_course_select.prop('disabled', true);
      survey_course_select.hide();

    }
  });
});



