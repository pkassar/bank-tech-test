load './lib/account.rb'
acc = Account.new
acc.credit(200)
acc.debit(5)
acc.debit(2)
acc.debit(1)
acc.debit(12)
acc.print_statement(2)
