class ContactsController < ApplicationController
  def new
    @aono=Contact.new
  end

  def create
    @aono=Contact.new(contact_aono)
    puts @aono.save
    if @aono.save
      redirect_to new_path, notice: "書き込み成功"
    else
      render :new
    end
  end

  private
  def contact_aono
    params.require(:contact).permit(:name,:email,:content)
  end
end
