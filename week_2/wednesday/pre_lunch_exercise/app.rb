require "sinatra"
require "sinatra/reloader" if development?

enable(:sessions)


credentials = {

	"nickborbe" => "sharks1227"
	"andrugz" => "adjudicate"
	"psmith" => "andrew!"
}


get "/" do 
	erb(:login_page)
	end