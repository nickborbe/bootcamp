require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	erb(:home2_template2)
end