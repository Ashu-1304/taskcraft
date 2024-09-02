class ContactMailer < ApplicationMailer  
    def notify_admin(contact)
      @contact = contact
      mail(
        from: @contact.email,
        to: 'vivek@poolstack.in',  
        subject: 'New Contact Form Submission'
      )
    end
end
  