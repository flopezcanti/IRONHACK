require_relative '../check_password.rb'

RSpec.describe 'CheckPassword' do
	
	describe '#size_password?' do
		it 'Have 7 or more characters' do
			@checkpassword = CheckPassword.new
			expect(@checkpassword.size_password?("hola")).to be false 
		end

		it 'Have 7 or more characters' do
			@checkpassword = CheckPassword.new
			expect(@checkpassword.size_password?("holaCarabola")).to be true 
		end
	end

	describe '#password_content?' do
		it 'If password does not content' do
			@checkpassword = CheckPassword.new
			expect(@checkpassword.password_content?("@")).to be false
		end
		it 'If password does NOT content ' do
			@checkpassword = CheckPassword.new
			expect(@checkpassword.password_content?("1")).to be false
		end
		it 'If password does NOT content ' do
			@checkpassword = CheckPassword.new
			expect(@checkpassword.password_content?("a")).to be false
		end

		it 'If password does content numbers, letters and symbol' do
			@checkpassword = CheckPassword.new
			expect(@checkpassword.password_content?("T@ngo1")).to be true
		end

		it 'If password does NOT content all of them (numbers, letters and symbol)' do
			@checkpassword = CheckPassword.new
			expect(@checkpassword.password_content?("1234")).to be false
		end

		it 'If password does NOT content all of them (numbers, letters and symbol)' do
			@checkpassword = CheckPassword.new
			expect(@checkpassword.password_content?("1234")).to be false
		end
	end

	describe '#password_uppercase?' do
		it 'If password does content all of them (Upper and Lower)' do
			@checkpassword = CheckPassword.new
			expect(@checkpassword.password_uppercase?("Aa")).to be true
		end

		it 'If password does NOT content all of them (Upper and Lower)' do
			@checkpassword = CheckPassword.new
			expect(@checkpassword.password_uppercase?("aa")).to be false
		end
	end

	describe '#name_mail_not_in_password?' do
		it 'If name or mail is in password that must be false' do
			@checkpassword = CheckPassword.new
			expect(@checkpassword.name_mail_not_in_password?("lara@lara.com", "lara") ).to be false
		end

		it 'If name or mail is in password that must be false' do
			@checkpassword = CheckPassword.new
			expect(@checkpassword.name_mail_not_in_password?("lara@lara.com", "fernando")).to be true
		end
	end
end



