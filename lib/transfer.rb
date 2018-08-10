class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, money)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = money
  end

  def valid?
    return @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    @sender.balance -= @amount
    @receiver.balance += @amount
  end

end
