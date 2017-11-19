class BankAccount
attr_accessor :balance, :name

def balance
    begin
    if @balance.to_i < 200
    raise ArgumentError.new("Minimum Balance requirement not met")
  else
    return @balance.to_i
  end
  # rescue ArgumentError => e
  #   puts e.message
  end#begin
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

# raise ArgumentError.new
# if BankAccount.new(@balance) < 200
#   puts "Minimum Balance requirements not met."
# elsif BankAccount.new(@balance) > 200
# end #if
# end #elsif
# end #begin
