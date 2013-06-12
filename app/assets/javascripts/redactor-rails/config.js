$(document).ready(
  function(){
  var csrf_token = $('meta[name=csrf-token]').attr('content');
  var csrf_param = $('meta[name=csrf-param]').attr('content');
  var params;
  if (csrf_param !== undefined && csrf_token !== undefined) {
    params = csrf_param + "=" + encodeURIComponent(csrf_token);
  }
  $('.redactor').redactor(
    { "imageUpload":"/redactor_rails/pictures?" + params,
      "imageGetJson":"/redactor_rails/pictures",
      "fileUpload":"/redactor_rails/documents?" + params,
      "fileGetJson":"/redactor_rails/documents",
      "path":"/assets/redactor-rails",
      "css":"style.css",
      buttons: ['html', '|', 'formatting', '|', 'bold', 'italic', 'deleted', '|', 
                'unorderedlist', 'orderedlist', 'outdent', 'indent', '|',
                'image', 'table', 'link', '|',
                'fontcolor', 'backcolor', '|', 'alignment', '|', 'horizontalrule'],
      formattingTags: ['blockquote', 'pre', 'h1', 'h2', 'h3', 'h4'], 
      paragraphy: false,
      linebreaks: true,
      deniedTags: ['p','html']
  }
  );
});