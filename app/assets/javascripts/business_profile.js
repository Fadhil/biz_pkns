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

$('document').ready(function(){
  var rnum_field = $('#registration_number_field')
  var reg_num_checkbox = $('#user_business_profile_attributes_business_registered')
  if(reg_num_checkbox.is(':checked') == false){
    rnum_field.hide();
  }
  reg_num_checkbox.change(function(){
    if(reg_num_checkbox.is(':checked') == true){
      rnum_field.show();
    } else {
      rnum_field.hide();
    }
  });
});

