class ContactsController < ApplicationController
  def create
    @contact  = Contact.new(contact_params)
    if @contact.save
      ContactMailer.notify_admin(@contact).deliver_now
      render json: @contact,status: :ok
    else
      render json: {error: @contact.errors.full_messages},status: :unprocessable_entity
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:full_name,:mobile_number,:email,:message,:term_condition)
  end
end
