class Project < ActiveRecord::Base
	has_many :entries
	validates :name, 
	presence :true, 
	uniqueness: true, 
	length: {maximum: 30}, 
	format: {with: /(\w+\s+)/ }


	def clean_old
		where("created_at <= ?", 1.week.ago).destroy_all
	end

	def self.show_ten
		limit(10)
	end

	def total_hours_in_month(month, year)
		sum = 0
		min_sum = 0
		current_month = Date.new(year, month)

		entries
		.where(date: current_month.beginnging_of_month..current_month.end_of_month)
		.each do |e|
		sum += e.hours
		min_sum += e.minutes
		end

			r = min_sum / 60
			sum + r
	end


end
