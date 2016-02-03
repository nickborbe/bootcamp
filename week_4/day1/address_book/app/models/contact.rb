class Contact < ActiveRecord::Base

	

	def self.sort_contacts
		contacts = Contact.all
		sorted_contacts = contacts.sort {|a, b| a.name <=> b.name }
		sorted_contacts

	end

	def add_favorite!
		self.favorite = true

	end



end
