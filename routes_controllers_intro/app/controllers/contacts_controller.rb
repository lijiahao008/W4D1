class ContactsController < ApplicationController
  def index
    contacts = User.find(params[:user_id]).contacts
    render json: contacts
  end

  def create
    contact = Contact.new(contact_params)

    if contact.save
      render json: contact
    else
      render json: contact.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    contact = Contact.find(params[:id])
    render json: contact
  end

  def update
    contact = Contact.find(params[:id])

    if contact.update(contact_params)
      render json: contact
    else
      render json: contact.errors.full_messages, status: :unprocessable_entity
    end

  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    render json: contact
  end

  def favorites
    contacts = Contact.where(user_id: params[:user_id], favorite: true)
    favorite_shared_contacts = ContactShare.where(user_id: params[:user_id], favorite: true).map(&:contact)
    render json: (contacts + favorite_shared_contacts)
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :user_id)
  end
end
