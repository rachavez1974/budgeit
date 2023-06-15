class UsersController < ApplicationController
  def index
    @users = User.all

    respond_to do |format|
      format.html
      format.pdf do
        html = UsersController.render 'users/index',  assigns: { users: @users }
        kit = PDFKit.new(html)
        send_data(kit.to_pdf, :filename => "users", :type => 'application/pdf', :disposition => 'inline')
      end
    end
  end
end
