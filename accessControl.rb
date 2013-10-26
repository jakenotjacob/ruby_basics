#Access Control in Ruby is determined at runtime
class MyClass

  public 
  def method1
    #Public
    #Accessible by all
  end

  private
  def method2
    #Private
    #CANNOT be called with explicit receiver
    #
    #Can be called ONLY in defining class
    #and by direct descendants within same
    #object
  end

  protected
  def method3
    #Protected
    #Invoked by objects of defining class
    #and its subclasses
  end

  #Other method of declaring access
  public :method1
  private :method2
  protected :method3
end

###EXAMPLES BELOW###

class Accounts
  attr_reader :balance
  protected :balance

  def debit(account, amount)
    account.balance -= amount
  end
  
  def credit(account, amount)
    account.balance += amount
  end

  def greaterBalanceThan(other)
    return @balance > other.balance
  end

  public
  #...
  def transferToSavings(amount)
    debit(@checking, amount)
    credit(@savings, amount)
  end
  #...
end

