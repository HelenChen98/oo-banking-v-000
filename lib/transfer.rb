class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, money)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50

  end

end
