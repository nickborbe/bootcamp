class Project < ActiveRecord::Base
	def clean_old
		where("created_at <= ?", 1.week.ago).destroy_all
	end

	def self.show_ten
		limit(10)
	end


end
