require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  it 'displays a formatted entry from log the specified account' do
    @date = Date.today.strftime('%d-%m-%y')
    log = [{ date: @date, credit: 55, debit: 0, balance: 100 }]
    string = "#{@date} || 55 || 0 || 100\n"
    expect { statement.display(log, 1) }.to output(string).to_stdout
  end

  it 'displays a formatted header' do
    head = "date || credit || debit || balance \n"
    expect { statement.header }.to output(head).to_stdout
  end
end
