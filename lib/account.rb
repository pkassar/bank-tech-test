require_relative 'transactions.rb'

class Account

  attr_reader :balance

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

private

  def sufficient(amount)
  raise "Insufficient funds" if amount > @balance
  end


end
