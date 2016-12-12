class HomeController < ApplicationController
  def home
  end
  
  def contact
  end
  
  #method for sending an email
  def request_contact
    name = params[:name]
    email = params[:email]
    message = params[:message]
    
    #displays an alert if there's no email
    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    #sends email and gives success notice
    else
      ContactMailer.contact_email(email, name, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end
    
    redirect_to root_path
  end
end
