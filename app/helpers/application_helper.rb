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

  # devise
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
