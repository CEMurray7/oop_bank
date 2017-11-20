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
      expect(account.balance).to eq(500)
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
  context "making a withdrawal" do
    let(:account) do
      acount = BankAccount.new(500, "Sarah")
      account.withdraw(200)
      account

    it "balance is decreased" do
      expect(account.balance).to eq(300)
end #accountdo
    end#itdo
  end #contextdo
  context "transfering funds" do
    let (:account) do
      account = BankAccount.new(500, "Sarah")
    let (:other_account) do
      other_account = BankAccount.new(1000, "Todd")

    before :each do
      account.transfer(200, other_account)
    it "account balance is decreased" do
      expect(account.balance).to eq(300)
    end#itdo
    it "other account balance is increased" do
      expect(other_account.balance).to eq(1200)
    end#itdo
  end #letdo1
end#letdo2
end#letdo3
  end#contextdo
  context "minimum balance"
  it "throws an error if minimum opening balance of 200 is not met" do
  expect { BankAccount.new(100, "Sarah") }.to raise_error(ArgumentError)
end#itdo
    it "raises an error if opening balance is too low" do
      expect{ BankAccount.new(199, "Terry") }.to raise_error(ArgumentError)
    end#itdo
    it "does NOT raise an error if opening balance is over minimum balance" do
      expect{ BankAccount.new(201, "Terry") }.not_to raise_error
    end
    it "allows the bank owner to change the minimum balance" do
      BankAccount.minimum_balance = 100
      expect(BankAccount.minimum_balance).to eq(100)
    end
end #describe do
