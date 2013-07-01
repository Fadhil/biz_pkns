
// $(document).ready(function(){
//   select_advert = $('#select_advert_type')
//   course_ad_section = $('#course_advert')
//   product_ad_section = $('#product_advert')

//   if(select_advert.val() == 'Course'){
//     course_ad_section.show();
//     product_ad_section.hide();
//   } else if(select_advert.val() == 'Product'){
//     course_ad_section.hide();
//     product_ad_section.show();
//   }

// });


$(document).ready(function(){
  advert_program_select = $('#advert_program_select')
  advert_program_select.change(function(){
  advert_course_select = $('#advert_course_select')
    $.ajax({
      type: 'GET',
      url: '/course_dropdown',
      data: {program_id: advert_program_select.val() },
      success: function (response) {
        advert_course_select.show();
        advert_course_select.prop('disabled', false)
        advert_course_select.html(response);
      }
    });
  });
});


// $(document).ready(function(){
//   select_advert = $('#select_advert_type')
//   course_ad_section = $('#course_advert')
//   product_ad_section = $('#product_advert')
//   select_advert.change(function(){
//     if($(this).val() == 'Course'){
//       course_ad_section.show();
//       product_ad_section.hide();
//     } else if($(this).val() == 'Product'){
//       course_ad_section.hide();
//       product_ad_section.show();
//     }
//   });
// });
