class LetterPdf < Prawn::Document
include ApplicationHelper
  def initialize(letter, sender, users)
    
    super(top_margin: 140)
    users.each do |user|
        text "#{user.full_name}"
        text full_address_text(user)

        move_down 20
        text "#{letter.date}"

        move_down 20
        text "Perkara: #{letter.subject},"

        move_down 15
        text "#{letter.message}".gsub("<p>","").gsub("</p>","\n\n").gsub("<br>","\n\n").gsub("<div>","").gsub("</div>","").gsub("&nbsp;"," ").html_safe, :inline_format => true

        move_down 20
        text "Yang Bertugas,".html_safe

        move_down 3
        text sender.full_name
        start_new_page
    end
  end

end