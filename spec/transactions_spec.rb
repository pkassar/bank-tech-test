require 'transactions'

describe Transaction do
  subject(:transactions) { describe_class.new}
  describe "#list" do
    it " Should be empty initially" do
      expect(transactions.list).to be_empty
    end
  end
end
