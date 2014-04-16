class Person
	attr_reader :name
	attr_accessor :pocket_change
	attr_accessor :bank_account
	attr_accessor :total
	
	def initialize(name, pocket_change)
		@name = name
		@pocket_change = pocket_change
		@bank_account = 0
		@total = pocket_change + bank_account
		puts "Hi, #{@name}. You have #{@pocket_change}."
	end
end

class Bank
	def initialize(bank_name)
		@bank_name = bank_name
		puts "#{@bank_name} was just created."
	end

	def open_account(person)
		@account_holder = person
		@balance = 0
		puts "#{person.name}, thanks for opening an account at #{@bank_name}!"
	end

	def withdraw(amount)

	end

	def deposit(amount)
	end

	def transfer(amount)
	end
end