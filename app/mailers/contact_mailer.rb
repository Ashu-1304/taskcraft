class ContactMailer < ApplicationMailer  
    def notify_admin(contact)
      @contact = contact
      mail(
        from: @contact.email,
        to: 'admintaskcraft@yopmail.com',  
        subject: 'New Contact Form Submission'
      )
    end
end
  