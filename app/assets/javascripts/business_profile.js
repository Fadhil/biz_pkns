$('document').ready(function(){
  var bp_checkbox = $('.bp_checkbox')
  var business_fields = $('#business_fields')
  if(bp_checkbox.is(':checked') == false){
    business_fields.hide();
  }
  bp_checkbox.change(function(){
    if(bp_checkbox.is(':checked') == true){
      business_fields.show();
    } else {
      business_fields.hide();
    }
  });

});

