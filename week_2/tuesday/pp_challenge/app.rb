require "sinatra"
require "artii"

get "/ascii/:text/?:font?" do 
	@text = params[:text]
	font = params[:font]

	if params[:font].nil?
		font = 'slant'
	end

	a = Artii::Base.new :font => font
	@ascii_text = a.asciify(@text)




	erb(:art_page)
end

