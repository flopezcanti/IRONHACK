#payroll of employees: Necesitamos su nombre e email
#type salaries: hourly, yearly, ted (a mix of hourly and yearly)
#



class Employee 
	attr_reader :name, :email
	def initialize name, email
		@name = name
		@email = email
	end
end


class SalaryHourly < Employee
	def initialize name, email, hours_works, hourly_rate
		super(name, email)
		@hourly_rate = hourly_rate
		@hours_works = hours_works
	end	

	def calculate_salary
		salary = @hourly_rate * @hour_works
	end
end

class SalaryYearly < Employee 
	def initialize name, email, yearly_rate
		super name, email
		@yearly_rate = yearly_rate
	end

	def calculate_salary
		yearly_rate = @yearly_rate * @weeks_works
		weekly_rate = yearly_rate / 52
	end

end

class Ted < Employee
	def initialize name, email, yearly_baserate, price_overtime, hours_overtime
		super name, email
		@yearly_baserate = yearly_baserate
		@price_overtime = price_overtime
		@hours_overtime = hours_overtime		
	end

	def calculate_salary
		yearly_rate = yearly_baserate + (price_overtime * hours_overtime)
		weekly_rate = yearly_rate / 52
	end
end

class Payroll
	def initialize (employees)
		@employees = employees
		
	end

	def pay_employees
		puts calculate_salary
		puts salary + weekly_rate  + weekly_rate
	end

end

josh = SalaryHourly.new("josh", "lam@gmail.com", 35, 50)
nizar = SalaryYearly.new("nizar", "nmz@gmail.com", 100000)
ted = Ted.new("Ted","ted@gmail.com","60000",275,55)