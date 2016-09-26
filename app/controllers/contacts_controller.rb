class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    MailSenderMailer.inquiry(@contact).deliver
    if @contact.save
      redirect_to top_path, notice:'お問い合わせメールの送信が完了しました'
    else
      render :new
    end
  end
  
  private
  def contact_params
    params.require(:contact).permit(:email, :name, :message)
  end
end
