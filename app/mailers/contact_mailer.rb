class ContactMailer < ApplicationMailer
    #stores all of the form information
    def contact_email(email, name, message)
        @email = email
        @name = name
        @message = message
        mail cc: @email
    end
end
