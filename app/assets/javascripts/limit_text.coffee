window.limitText = (inputBox, warningText, limitNum) ->
  if inputBox.value.length >= limitNum
    inputBox.value = inputBox.value.substring(0,limitNum)
    $('#' + warningText).animate({color:'red'},1000).animate({color:'gray'},1000)
    