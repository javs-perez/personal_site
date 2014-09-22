class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
			flash.now[:notice] = "Thank you for your message. I will get back to you soon."
		else
			flash.now[:error] = "We could not send your message. Please try again!"
			render :new
		end
	end
end
