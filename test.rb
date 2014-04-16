chase = Bank.new("JP Morgan Chase")
wells_fargo = Bank.new("Wells Fargo")
me = Person.new("Shehzan", 500)
friend1 = Person.new("John", 1000)
chase.open_account(me)
chase.open_account(friend1)
wells_fargo.open_account(me)
wells_fargo.open_account(friend1)

chase.deposit(me, 200)
chase.deposit(friend1, 300)
chase.withdraw(me, 50)

chase.transfer(me, wells_fargo, 100)