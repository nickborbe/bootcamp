class User < ActiveRecord::Base
	has_many :products, dependent: :destroy

	validates :name,
	presence: true,
    uniqueness: true

	validates :email,
	presence: true,
    uniqueness: true
end
