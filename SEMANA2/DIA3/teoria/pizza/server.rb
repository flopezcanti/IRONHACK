require "sinatra"
require "sinatra/reloader" if development?


enable(:sessions)

get "/pizza_text/:text" do

	#@ingredients = ["cheesse", "tomato", "mushroms"]
	
	text = params[:text]
	
	session[:saved_value] = text
	
	erb(:pizza)
end

get "/sesion_show" do
	"Now in the session: " + session[:saved_value]
end