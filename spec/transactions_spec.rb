require 'transactions'

describe Transaction do
  subject(:transactions) { described_class.new }

  describe "#list" do
    it "Should be empty initially" do
      expect(transactions.list).to be_empty
    end
  end

  describe "#create_transaction" do
    it "Adds a transaction at the date it happened to the list" do
      transactions.create_transaction("10/10/2016", 100)
      expect(transactions.list).to eq [ :date=>"10/10/2016", :flux => 100 ]
    end
  end

end
