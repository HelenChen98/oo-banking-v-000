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
    if !@sender.valid?
      puts "Transaction rejected. Please check your account balance."
    end
    if @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    end
  end

end
