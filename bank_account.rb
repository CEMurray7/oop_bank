class BankAccount
attr_accessor :balance, :name

def balance
    return @balance.to_i
end #balance

def deposit(amount)
  return @balance.to_i + (amount)
end#deposit

def withdraw(amount)
  return @balance.to_i - (amount)
end#withdraw

def transfer(amount, bank_account)
  
  return @balance.to_i - (amount)
end#transfer

  def initialize(balance, name)
    @balance = balance
    @name = name


  end #initialize
end #BankAccount
