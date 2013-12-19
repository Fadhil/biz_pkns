class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      name = params[:message][:name]
      email = params[:message][:email]
      content = params[:message][:content]
      
      ContactFormMailer.contact(name, email, content).deliver
      redirect_to root_url, notice: "Message sent! Thank you for contacting us."
    else
      render "new"
    end
  end
end