class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @reciever = receiver
    @status = 'pending'
    @amount = amount
  end
  
  def valid?
    if self.sender.valid? && self.receiver.valid?
      true
    else
      false
    end
  end
  
  def execute_transaction
    if self.valid? && self.status == 'pending'
      self.sender.balance -= self.amount
      self.receiver.balance += self.amount
      self.status = 'complete'
    end
  end
  
end
