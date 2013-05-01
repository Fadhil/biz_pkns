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
end
