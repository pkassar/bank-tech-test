require 'statement'

describe Statement do

  log = [{ date: @date, credit: 55, debit: 0, balance: 100}]

  subject(:statement) { described_class.new(log) }

  it 'prints out the statement of the specified account' do
    expect(statement.display,1).to eq "date || credit || debit || balance\n #{@date} || 100.00 || 0.00 || 100.00"
  end

end
