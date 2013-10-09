class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      render :json => @contact, :status => :created
    else
      render :json => @contact.errors.full_messages, :status => :unprocessable_entity
    end
  end

  def destroy
    Contact.find(params[:id]).destroy
    head :ok
  end

  def index
    render :json => Contact.contacts_for_user_id(params[:user_id])
  end

  def show
    render :json => Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update_attributes(params[:contact])
      render :json => @contact
    else
      render :json => @contact.errors.full_messages, :status => :unprocessable_entity    
    end
  end
end
