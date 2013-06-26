module ApplicationHelper
  def nice_errors(resource)
    individual_messages = ''
    resource.errors.full_messages.each do |k,v|
      individual_messages += <<-HTML
        <li>#{k} #{v}</li>
      HTML
    end
    error_message = t('errors.failed_to_create_user')
    error_message += <<-HTML
      <ul>#{individual_messages}</ul>
      Sila masukkan butiran secukupnya
    HTML

    error_message
  end

  def program_switch_menu
    menu_html = ''
    if current_consultant
      programs = current_consultant.programs
      unless programs.empty?
        programs.each do |p|
          menu_html += content_tag(:li, link_to(p.name,select_program_path(p)))
        end
      end
    end
    #menu_html = content_tag(:ul, menu_html.html_safe)

    menu_html
  end

  def full_address(user)
    full_address = ""

    unless user.address.nil?
      unless user.address.line1.blank?
        full_address += "<br/>#{user.address.line1}".html_safe
      end
      unless user.address.line2.blank?
        full_address += "<br/>#{user.address.line2}".html_safe
      end
      unless user.address.postcode.blank?
        full_address += "<br/>#{user.address.postcode}".html_safe
      end
      unless user.address.city.nil?
        full_address += "<br/>#{user.address.city.name}".html_safe
        full_address += "<br/>#{user.address.city.state_name}"
      end
    end

    full_address.html_safe
  end

  def full_address_text(user)
    full_address = ""

    unless user.address.nil?
      unless user.address.line1.blank?
        full_address += "#{user.address.line1}\n"
      end
      unless user.address.line2.blank?
        full_address += "#{user.address.line2}\n"
      end
      unless user.address.postcode.blank?
        full_address += "#{user.address.postcode}\n"
      end
      unless user.address.city.nil?
        full_address += "#{user.address.city.name}\n"
        full_address += "#{user.address.city.state_name}\n"
      end
    end

    full_address

  end
end
