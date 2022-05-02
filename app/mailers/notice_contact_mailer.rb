class NoticeContactMailer < ApplicationMailer
  def notice
    @contact = params[:contact]
    mail(to: 'wakaran@yhmk.org', subject: 'お便りが届きました')
  end
end
