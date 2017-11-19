require './bank_account'

describe BankAccount do
  context "has a balance" do
    let(:account) do
      account = BankAccount.new(500, "Sarah")
end #:account do
    it "is created with an opening balance and the name of the client" do
      expect(account).to be_a(BankAccount)
end#classcheck do
    it "can report it's balance" do
      expect(account.test_balance).to eq(500)
  end#test_balancedo
end#contextdo
  context "making a deposit" do
    let(:account) do
      account = BankAccount.new(500, "Sarah")
      account.deposit(500)
      return account
    # end#letdo
    it "balance is increased" do
      expect(account.deposit).to eq(1000)
    end#itdo
  end #letdo
end #contextdo
  context "making a withdrawal"
    it "balance is decreased"
  context "transfering funds"
    it "account balance is decreased"
    it "other account balance is increased"
  context "minimum balance"
    it "raises an error if opening balance is too low"
    it "does NOT raise an error if opening balance is over minimum balance"
    it "allows the bank owner to change the minimum balance"
end #describe do
