module AdvertsHelper
  def error_messages(resource)
    message = nil
    return message if resource.errors.full_messages.empty?
    message =  resource.class.model_name.human + " mengandungi masalah berikut:<br/>"
    resource.errors.full_messages.each do |msg|
      message += (msg + "<br/>")
    end 
    return message.html_safe
  end
end
