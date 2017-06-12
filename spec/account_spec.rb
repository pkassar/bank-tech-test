require 'account'

subject(:account) {described_class.new}

describe 'Account' do
    it "has an initialised balance of £0 (zero)" do
      expect(account.balance).to eq(0)
    end
end
