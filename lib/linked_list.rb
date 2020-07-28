require "./lib/node"
require "pry"

class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
      current.next = Node.new(value)
    end
  end
  def count
    if @head.nil?
      0
    else
      count = 1
      current = @head
      until current.next.nil?
        current = current.next
        count += 1
      end
      count
    end
  end

  def to_string
    elements = []
    current = @head
    while current.next != nil
      elements << current.payload
      current = current.next
    end
    elements << current.payload
    elements.join(" ")
  end
end
 list = LinkedList.new
 # puts list.head
 puts list.count
 list.append(6)
 puts list.count
 # puts list.head.payload
 list.append(3)
 puts list.count
 # puts list.head.next
 puts list.to_string
