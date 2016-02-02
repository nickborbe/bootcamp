class ContactsController < ApplicationController
	def index
		@contacts = Contact.show
		@contacts
		render 'index'
	end
end
