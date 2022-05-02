class ContactController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    contact = Contact.create(contact_params)
    NoticeContactMailer.with(contact: contact).notice.deliver_now
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
