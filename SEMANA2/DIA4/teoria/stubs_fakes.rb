require 'rspec'
require 'pry'

class EmailProviderFake
	def initialize subjects
		@subjects = subjects
	end
	
	def get_subjects
		@subjects
		# ["esto era para ayer",
		# 	"qué ha pasado con la semana dos",
		# 	"hay que preparar la semana dos",
		# 	"hay que revisar los callback"]
	end
end

class WordChecker
	def initialize subject_provider
		@subject_provider = subject_provider
	end

	def check words
		result = true
		subjects = @subject_provider.get_subjects
		words.empty?
	end
end


RSpec.describe "WordChecker" do
	describe "EmailProvider has not strings" do
		it "should return TRUE if no words given in subject" do
			#provider = EmailProviderFake.new([])
			provider = instance_double("EmailProvider", :get_subjects => [])
			counter = WordChecker.new(provider)
			expect(counter.check([])).to eq(true)
		end
	end

	it "should return TRUE if ONE words is included in subject" do
		provider = EmailProviderFake.new([])
		counter = WordChecker.new(provider)
		expect(counter.check(["hola"])).to eq(false)
	end

	describe "Email Provider HAS strings" do
		xit "should return FALSE if ONE words is included in subject" do
			# provider = EmailProviderFake.new(["hola"])
			provider = instance_double("EmailProvider", :get_subjects => ["hola"])
			counter = WordChecker.new(provider)
			expect(counter.check(["hola"])).to eq(true)
		end
	end

	describe "Email Provider HAS serveral words" do
		it "should return TRUE if SEVERAL words are included in subject" do
		end
	end


end