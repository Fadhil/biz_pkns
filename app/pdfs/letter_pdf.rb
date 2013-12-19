class LetterPdf < Prawn::Document
include ApplicationHelper
  def initialize(letter, sender, users)
    
    super(top_margin: 10)
   

    users.each do |user|
        font "Helvetica", style: :bold
        text '"KEJUJURAN DAN KETEKUNAN"'

        font "Helvetica",style: :normal
        draw_text "Surat Kami:", at: [400,700]
        draw_text "Tarikh: #{letter.date}", at: [400, 680]
        move_down 100

        text "#{user.full_name}"
        move_down 20

        text full_address_text(user)
        move_down 20


        text "Tuan/Puan,"
        move_down 20


        font "Helvetica", style: :bold
        text "Perkara: #{letter.subject},"
        font "Helvetica", style: :normal
        move_down 15
        text "#{letter.message}".gsub("<p>","").gsub("</p>","\n\n").gsub("<br>","\n\n").gsub("<div>","").gsub("</div>","").gsub("&nbsp;"," ").html_safe, :inline_format => true

        move_down 20

        font "Helvetica", style: :bold
        text '"BERKHIDMAT UNTUK NEGARA"'
        font "Helvetica", style: :normal
        move_down 10
 
        text "Saya yang menurut perintah"
        start_new_page
    end
  end

end