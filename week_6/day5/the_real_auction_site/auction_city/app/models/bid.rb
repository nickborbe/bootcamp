class Bid < ActiveRecord::Base
	attr_accessor :email
	belongs_to :product
end
