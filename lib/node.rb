class Node
  attr_reader :payload
  attr_accessor :next

  def initialize(value)
    @payload = value
    @next = nil
  end

end

#
# head = Node.new(1)
# puts head.payload
# puts head.next
