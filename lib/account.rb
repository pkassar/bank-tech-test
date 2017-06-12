class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def credit(amount)
    @balance += amount
  end

  def debit(amount)
    sufficient(amount)
    @balance -= amount
  end

  def sufficient(amount)
  raise "Insufficient funds" if amount > @balance
  end

end
