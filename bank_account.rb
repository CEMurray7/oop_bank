class BankAccount

attr_accessor :balance, :name, :minimum_balance

def self.minimum_balance(minimum_balance)
@minimum_balance
end
def balance
    return @balance.to_i
  # rescue ArgumentError => e
  #   puts e.message
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
# def self.minimum_balance
#
# end


  def initialize(balance, name)
    @balance = balance
    @name = name
    @minimum_balance = minimum_balance
    begin
      if @balance.to_i < 200
        raise ArgumentError.new("Minimum Balance requirement not met")
      else
        return @balance.to_i
      end
    end
  end #initialize
end #BankAccount

# raise ArgumentError.new
# if BankAccount.new(@balance) < 200
#   puts "Minimum Balance requirements not met."
# elsif BankAccount.new(@balance) > 200
# end #if
# end #elsif
# end #begin
