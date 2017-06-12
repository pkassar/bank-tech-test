require 'account'

describe 'Account' do

account = Account.new

    it "Has an initialised balance of £0 (zero)" do
      expect(account.balance).to eq 0
    end

    it "Credits the account with £55 making the balance £55" do
      account.credit(55)
      expect(account.balance).to eq 55
    end

    it "Debits the account with £600 making the balance £955" do
      account.credit (1500)
      account.debit(600)
      expect(account.balance).to eq 955
    end

    it "Raises an error if you try to withdraw more money than available balance" do
      expect{ account.debit(1000) }.to raise_error "Insufficient funds"
    end


end
