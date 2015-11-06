require_relative '../server.rb'
require 'rspec'
require 'rack/test'

describe 'Server Service' do 
	include Rack::Test::Methods
	
	def app
		Sinatra::Application
	end

	it "should load de homepage" do
		get '/'
		expect(last_response).to be_ok
	end

	it "should NOT load de homepage" do
		get '/home'
		expect(last_response).to_not be_ok
	end

	xit "should load the other page" do
		get '/real_page' 
		expect(last_response).to be_ok
	end

	xit "should redirect to the real_page" do
		get '/hi'
		expect(last_response.redirect?).to be(true)
		follow_redirect!
		expect(last_request.path).to eq('/real_page')
	end

end