require "sinatra"

get "/hi" do 
	@greeting = "Hello World!"
	erb(:author)
end

get "/author" do 
	
end

get "/pizza" do

	@ingredients = ["cheesse", "tomato", "mushroms"]
	erb(:pizza)

end

get "/users/:username" do
	@username = params[:username]

	erb(:user_profile)
end

get "/hours/ago/:hour" do
	@hour = params[:hour].to_i * 3600
	@hour_ago = params[:hour]

	erb(:hour)
end