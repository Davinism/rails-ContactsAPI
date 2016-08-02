class ContactsController < ApplicationController
  def index
    # @contacts = Contact.all
    # render json: @contacts
    @contacts = Contact.where(user_id: params[:user_id])
    @contacts.concat(User.where(id: params[:user_id]).first.shared_contacts)

    render json: @contacts
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save!
      render json: @contact
    else
      render json: @contact.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    contact = Contact.find(params[:id])

    render json: contact
  end

  def update
    contact = Contact.find_by(id: params[:id])

    if contact.update(contact_params)
      render json: contact
    else
      render json: contact.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    contact = Contact.find(params[:id])

    if contact.destroy
      render json: contact
    else
      render text: "This contact is indestructable"
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :user_id)
  end
end
