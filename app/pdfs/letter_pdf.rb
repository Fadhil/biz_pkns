class LetterPdf < Prawn::Document
  def initialize(letter)
    super(top_margin: 140)
    @letter = letter
    text "#{@letter.full_name}"
    text "#{@letter.line1}"
    text "#{@letter.line2}"
    text "#{@letter.postcode}"
    text "#{@letter.city} #{@letter.state}"

    move_down 20
    text "#{@letter.date}"

    move_down 20
    text "Kepada #{@letter.full_name},"

    move_down 15
    text "#{@letter.message}".html_safe,:inline_format => true

    move_down 20
    text "Yang benar,".html_safe

    move_down 30
    text "PKNS Biz Club"
  end

  def message
    
  end
end