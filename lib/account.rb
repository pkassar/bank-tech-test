require_relative 'transactions.rb'
require_relative 'statement.rb'

class Account

  attr_reader :balance, :log

  def initialize
    @balance = 0.00
    @log = []
  end

  def credit(amount)
    @balance += amount
    @log << Transaction.new(amount, self.balance).activity
  end

  def debit(amount)
    sufficient(amount)
    @balance -= amount
    @log << Transaction.new(amount, self.balance).activity
  end

  def print_statement(last_x_transactions)
    Statement.new.header
    Statement.new.display(self.log.reverse,last_x_transactions)
  end

private

  def sufficient(amount)
    raise "Insufficient funds" if amount > @balance
  end

# @log.unshift(Transaction.new(amount, self.balance).activity
end
