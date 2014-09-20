class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
			flash.now[:notice] = "Thank you for your message. I will get back to you as soon as I can."
			redirect_to root_path
		else
			flash.now[:error] = "Cannot send message."
			render :new
		end
	end
end
