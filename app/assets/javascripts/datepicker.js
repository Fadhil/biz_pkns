$(document).ready(function(){
  $('.datepicker').datepicker({
      dateFormat: "yy-mm-dd",
      minDate: new Date()
    });

  $('#start_date').change(function(){
    m_date = $(this).datepicker('getDate');
    min_date = new Date(m_date.getTime());
    min_date.setDate(min_date.getDate() + 1);

    $('#end_date').datepicker("option", "minDate", min_date);
  });
});


