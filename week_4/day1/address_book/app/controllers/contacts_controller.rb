class ContactsController < ApplicationController
	def index
		@contacts = Contact.all
		@sorted_contacts = Contact.sort_contacts
		render 'index'
	end

	def add_contact
		render 'new'
	end

	def create
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone => params[:contact][:phone],
      :email => params[:contact][:email])
     contact.save

    
    redirect_to "/contacts"
  end

  def show
  	the_id = params[:id]
  	@contact = Contact.find_by(id: the_id)
  	render "show"
  end

  def add_favorite
  	@contact = Contact.find_by(id: params[:favorite_contact])
  	@contact.add_favorite!
  	@contact.save
  	redirect_to('/contacts')

  end


end
