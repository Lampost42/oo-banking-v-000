class Transfer
  
  attr_accessor :sender, :reciever, :amount, :status
  
  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @status = 'pending'
    @amount = amount
  end
  
  def valid?
    if self.sender.valid? && self.reciever.valid?
      true
    else
      false
    end
  end
  
end
