require 'transactions'


describe Transaction do
  subject(:transactions) { described_class.new }

  before do
     @date = Date.today.strftime('%d-%m-%y')
   end

  describe "#log" do
    it "Should be empty initially" do
      expect(transactions.log).to be_empty
    end
  end

  describe "#create_transaction" do
    it "Adds a transaction at the date it happened to the log" do
      transactions.create_transaction(100)
      expect(transactions.log).to eq [ :date => @date, :flux => 100 ]
    end
  end

  # context 'is a credit' do
  #    it 'records the date' do
  #      expect(credit.details[:date]).to eq @date
  #    end

  # describe "#create_statement" do
  #   it "Prints out a statement of your last 10 transactions" do
  #     transactions.create_statement
  #     expect(transactions.log).to eq []
  #   end
  # end

end
