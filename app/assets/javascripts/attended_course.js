$('document').ready(function(){
  var at_checkbox = $('.at_checkbox')
  var attended_course_fields = $('#attended_course_fields')
  if(at_checkbox.is(':checked') == false){
    attended_course_fields.hide();
  }
  at_checkbox.change(function(){
    if(at_checkbox.is(':checked') == true){
      attended_course_fields.show();
    } else {
      attended_course_fields.hide();
    }
  });

});

