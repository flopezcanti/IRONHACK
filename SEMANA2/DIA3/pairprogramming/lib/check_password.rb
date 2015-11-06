require 'pry'
require 'rspec'

class CheckPassword
	def check_password email, password
	end

	def size_password? password
		password.size > 7
	end

	def password_content? password
		(password.match(/[a-zA-Z]/)) != nil && (password.match(/[0-9]/)) != nil && (password.match(/[^a-zA-Z0-9]/)) != nil    
	end

	def password_uppercase? password 
		(password.match(/[[:upper:]]/)) != nil && (password.match(/[[:lower:]]/)) != nil
	end 

	def name_mail_not_in_password? email, password
		email_modified = email.gsub(/[^a-zA-Z]/, " ")
		email_modified = email_modified.split
		password.include?(email_modified[0]) == false && password.include?(email_modified[1]) == false
	end
end