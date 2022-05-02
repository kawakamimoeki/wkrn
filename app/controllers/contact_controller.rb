class ContactController < ApplicationController
  def create
    contact = Contact.create(contact_params)
    NoticaContactMailer.with(contact: contact).notice.deliver_later
    redirect_to "#{request.referer}/thanks"
  end

  def index
    @contacts = Contact.all
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :episode, :content)
  end
end
