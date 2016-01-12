class Payroll 
	def initialize(employees)
		@employees = employees
	end
	def pay_employees
		payroll_total = 0
		array = []
		@employees.each do |person|
			array << person
		end	
		array.each do |thing|
puts "#{thing.name}: #{thing.calculate_salary}"
		payroll_total += thing.calculate_salary
		end
		puts "total payrol is #{(payroll_total * 0.82)} "

	end

	def notify_employee(employee)
          #email them
  end



end


  
