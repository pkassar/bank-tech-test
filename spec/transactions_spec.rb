require 'transactions'

describe Transaction do
  subject(:transactions) { described_class.new }

  before do
    @date = Date.today.strftime('%d-%m-%y')
  end

  new_balance = 1000
  amount = 100
  subject(:credit) { described_class.new(amount, new_balance) }
  subject(:debit) { described_class.new(-amount, new_balance) }

  context "A credit of £100" do
    it "Adds a transaction at the date it happened to the log" do
      expect(credit.activity[:date]).to eq @date
    end

    it 'records the amount credited' do
      expect(credit.activity[:credit]).to eq 100
    end

    it 'records the amount debited' do
      expect(credit.activity[:debit]).to eq 0
    end

    it 'records the new balance' do
      expect(credit.activity[:balance]).to eq 1000
    end
  end
end
