class Person
	attr_reader :name
	attr_accessor :pocket_change
	attr_accessor :total
	
	def initialize(name, pocket_change)
		@name = name
		@pocket_change = pocket_change
		@total = pocket_change
		puts "Hi, #{@name}. You have $#{@pocket_change}."
	end
end

class Bank
	attr_reader :bank_name
	attr_accessor :accounts
	def initialize(bank_name)
		@bank_name = bank_name
		@accounts = {}
		puts "#{@bank_name} was just created."
	end

	def open_account(person)
		@accounts[person.name] = 0
		puts "#{person.name}, thanks for opening an account at #{@bank_name}!"
	end

	def withdraw(person, amount)
		person.pocket_change += amount
		@accounts[person.name] -= amount
		puts puts "#{person.name} withdrew $#{amount} to #{@bank_name}. #{person.name} has $#{person.pocket_change}. #{person.name}'s account has $#{@accounts[person.name]}."
	end

	def deposit(person, amount)
		person.pocket_change -= amount
		@accounts[person.name] += amount
		puts "#{person.name} deposited $#{amount} to #{@bank_name}. #{person.name} has $#{person.pocket_change}. #{person.name}'s account has $#{@accounts[person.name]}."
	end

	def transfer(person, re_bank, amount)
		@accounts[person.name] -= amount
		re_bank.accounts[person.name] += amount
		puts "#{person.name} transfered $#{amount} from the #{@bank_name} account to the #{re_bank.bank_name} account. The #{@bank_name} account has $#{@accounts[person.name]} and the #{re_bank.bank_name} account has $#{re_bank.accounts[person.name]}."
	end
end