window.submitReportRequest = (report_name) ->
  start_date = $('#' + report_name + '_start_year').val()
  end_date = $('#' + report_name + '_end_year').val()
  program_name = $('#' + report_name + '_program').val()
  the_form = $('#' + report_name + '_report_form')

  if start_date > end_date
    alert('Tahun Mula perlu lebih awal dari Tahun Akhir')
  else if (program_name == '')
    alert('Sila pilih program')
  else
    the_form.submit()
