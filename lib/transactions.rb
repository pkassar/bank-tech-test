require 'date'

class Transaction

  attr_reader :amount, :activity

  def initialize(amount, new_balance)
    @date = Date.today.strftime('%d-%m-%y')
    @activity = { date: @date, credit: 0, debit: 0, balance: new_balance }
    @amount = amount
    debit_or_credit
  end

  private

  def debit_or_credit
    amount < 0 ? activity[:debit] = -amount : activity[:credit] = amount
  end

end
