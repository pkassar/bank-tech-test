# bank-tech-test
+ You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't   need to implement a command line interface that takes input from STDIN.)
+ Deposits, withdrawal.
+ Account statement (date, amount, balance) printing.
+ Data can be kept in memory (it doesn't need to be stored to a database or anything).


# Note
this tech test was solved using ruby 2.3.3p222

## User-stories include:
```
As a user
so that I can be responsible
I need to deposit my cash safely into an account
```
```
As a user
so that I can use my hard earned cash
I need to withdraw my cash from my account
```
```
As a user
so that I can have an idea of how much money I have
I need to be able to check my balance
```
```
As a user
so that I can remember the damage I did to my finances
I want to be able to print a full statement of my account
```
```
As a user
so that my cash statements are readable
I want to see my statement in reverse chronological order
```
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```


##To try the features of this code:
```load './lib/account.rb'
acc = Account.new
acc.credit(200)
acc.debit(5)
acc.debit(2)
acc.debit(1)
acc.debit(12)```
## and finally look at the two last transactions with your current balance on account
```acc.print_statement(2)```
