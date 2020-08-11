require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
  #  if self.sender != "" && self.receiver != "" && self.amount > 0
    if self.sender.valid? && self.receiver.valid? && self.amount > 0
      true
    else
      puts "invalid"
    end
  end


  def execute_transaction
    if sender.valid? && receiver.valid? && self.status != "complete"
      sender.balance = sender.balance - amount
      receiver.balance = receiver.balance + amount
      self.status = "complete"
    end

    if not (sender.valid? && receiver.valid?)
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end


  end

  def reverse_transfer
    if self.status == "complete"
      receiver.balance = receiver.balance - amount
      sender.balance = sender.balance + amount
      self.status = "reversed"
    end
  end


end
