class Lexiconomitron
	def eat_t(string)
		new_string=string.downcase.gsub(/t/,"")
	end
	def shazam(array)
	new_array=[]
	 array.each do |word|
		 new_array << word.reverse
end
final=[]
final << new_array.first
final << new_array.last
my_string=eat_t(final.join(' '))
my_string.split(' ')
end

	def oompa_loompa(array)
		new_array=[]
		array.each do |word|
			if word.length<=3
			new_array << word

			end

		end
		my_string= eat_t(new_array.join(" "))
		my_string.split(" ")
	end
end
