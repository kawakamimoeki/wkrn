# Preview all emails at http://localhost:3000/rails/mailers/notice_contact_mailer
class NoticeContactMailerPreview < ActionMailer::Preview
  def notice
    NoticeContactMailer.with(contact: Contact.first).notice
  end
end
