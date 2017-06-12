require 'account'

# subject(:account) {described_class.new}
account = Account.new

describe 'Account' do
    it "has an initialised balance of £0 (zero)" do
      expect(account.balance).to eq 0
    end

    # it "" do
    #   expect(account.balance).to eq 0
    # end
    #


end

describe 'Credit' do
  it "Credits the account with £100 making the balance £100" do
    account.credit(100)
    expect(account.balance).to eq 100
  end
end
