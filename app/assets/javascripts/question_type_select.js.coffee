$(document).ready ->
  select_collection = $("select[name^='survey[questions_attributes]']")
  for item in select_collection
    change_question_type(item, )



change_question_type = (question, options_id) ->
  if(question =='multiple_choice')
    $('.' + options_id).show();
  else
    $('.' + options_id).hide();
