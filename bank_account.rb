class BankAccount

attr_accessor :balance, :name, :minimum_balance
@@minimum_balance = 200
def initialize(balance, name)
  @balance = balance
  @name = name

  begin
    if @balance.to_i < 200
      raise ArgumentError.new("Minimum Balance requirement not met")
    else
      return @balance.to_i
    end
  end
end #initialize
# def self.minimum_balance=(bank_input)
#   @minimum_balance= (bank_input)
# end #self
def self.minimum_balance=(minimum_balance)
    @@minimum_balance = (minimum_balance) #(bank_input.gets.chomp)
  end

  def self.minimum_balance
      @@minimum_balance  #(bank_input.gets.chomp)
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




end #BankAccount

# raise ArgumentError.new
# if BankAccount.new(@balance) < 200
#   puts "Minimum Balance requirements not met."
# elsif BankAccount.new(@balance) > 200
# end #if
# end #elsif
# end #begin
