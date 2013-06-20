$(function() {
    $(".datepicker").datepicker();
  });

$(document).ready(function(){
    $(".start_date").datepicker({
        numberOfMonths: 1,
        onSelect: function(selected) {
          // $(".end_date").datepicker("option","minDate", selected)
          alert('Hello!');
        }
    });
    // $(".end_date").datepicker({ 
    //     numberOfMonths: 1,
    //     onSelect: function(selected) {
    //        $(".start_date").datepicker("option","maxDate", selected)
    //     }
    // });  
});