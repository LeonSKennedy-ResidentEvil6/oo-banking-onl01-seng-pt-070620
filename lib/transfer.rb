class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    valid?(sender, receiver, amount)
  end

  def valid?(sender,receiver,amount)
    if self.sender != "" && self.receiver != "" && self.amount > 0
      true 
    else 
      puts "invalid"
    end 
  end


end
