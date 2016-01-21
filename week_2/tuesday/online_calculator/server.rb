require "sinatra"
require_relative("lib/calculator.rb")

# get "/" do 
# 	erb(:home)
# end

get "/" do 
	erb(:home_ver_2)
end

post "/calculate" do 
	calc = Calculator.new
	first = params[:first_number].to_f
   	second = params[:second_number].to_f
   	operation_city = params["operation"]
   	
   	if operation_city == "add"
   		result = calc.add(first, second)
   		"#{first} + #{second} = #{calc.result}"
   elsif operation_city == "subtract"
   		result = calc.subtract(first, second)
   		"#{first} - #{second} = #{calc.result}"
   elsif operation_city == "multiply"
   		result = calc.multiply(first, second)
   		"#{first} * #{second} = #{calc.result}"
   	elsif operation_city == "divide"
   		result = calc.divide(first, second)
   		"#{first} * #{second} = #{calc.result}"
	else 
   end
   		
end


# get "/add" do 
# 	erb(:add)
# end

# post "/calculate_add" do 
# 	first = params[:first_number].to_f
#    	second = params[:second_number].to_f
# 	calc = Calculator.new
# 	result = calc.add(first, second)	
# 	"#{first} + #{second} = #{calc.result}"
# end

# post "/calculate_subtract" do 
# 	first = params[:first_number].to_f
#    	second = params[:second_number].to_f
# 	calc = Calculator.new
# 	result = calc.subtract(first, second)	
# 	"#{first} - #{second} = #{calc.result}"
# end

# post "/calculate_multiply" do 
# 	first = params[:first_number].to_f
#    	second = params[:second_number].to_f
# 	calc = Calculator.new
# 	result = calc.multiply(first, second)	
# 	"#{first} * #{second} = #{calc.result}"
# end

# post "/calculate_divide" do 
# 	first = params[:first_number].to_f
#    	second = params[:second_number].to_f
# 	calc = Calculator.new
# 	result = calc.divide(first, second)	
# 	"#{first} * #{second} = #{calc.result}"
# end









