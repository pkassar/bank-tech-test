require 'account'

describe Account do
  subject(:account) { described_class.new }
  describe '#balance' do
    it 'Has an initialised balance of £0 (zero)' do
      expect(account.balance).to eq 0
    end
  end

  describe '#credit' do
    it 'Credits the account with £55 making the balance £55' do
      account.credit(55)
      expect(account.balance).to eq 55
    end
  end

  describe '#debit' do
    it 'Debits the account with £600 making the balance £900' do
      account.credit (1500)
      account.debit(600)
      expect(account.balance).to eq 900
    end

    it 'Raises error if you try to withdraw more money than available' do
      expect{ account.debit(1000) }.to raise_error 'Insufficient funds'
    end
  end
end
