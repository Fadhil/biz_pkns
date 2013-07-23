window.submitReportRequest = () ->
  start_date = $('#report_start_year').val()
  end_date = $('#report_end_year').val()
  program_name = $('#report_program').val()
  the_form = $('#program_report_form')

  if start_date > end_date
    alert('Tahun Mula perlu lebih awal dari Tahun Akhir')
  else if (program_name == '')
    alert('Sila pilih program')
  else
    the_form.submit()
