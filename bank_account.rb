class BankAccount
attr_accessor :opening_balance, :name

  def initialize(opening_balance, name)
    @opening_balance = opening_balance
    @name = name

    def test_balance
        return @opening_balance.to_i
    end #test_balance
    # def deposit_balance
    #   @opening_balance.deposit
    # end#deposit_balance
    def deposit(amount)
      return @opening_balance.to_i + (amount)
    end#deposit
  end #initialize
end #BankAccount
