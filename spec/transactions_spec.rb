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
  end


end
