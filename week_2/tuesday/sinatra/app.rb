require "sinatra"

get "/" do 
	"My first Sinatra app."
end

get "/about" do 
	erb(:author)
end

get "/time_page" do 
	@time = Time.now
	@the_time = @time.strftime("%kth hour %Mth minute")
	erb(:time)
end

get "/hours/ago/:number" do
	@number = params[:number]
	@time = Time.now - (@number.to_i*3600)
		@the_time = @time.strftime("%k:%M")
	erb(:hours_ago)
end


