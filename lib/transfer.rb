class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if self.sender != "" && self.receiver != "" && self.amount > 0
      true
    else
      puts "invalid"
    end
  end

BankAccount.new(sender,receiver).valid?
end
