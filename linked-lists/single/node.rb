class Node
  attr_reader :item
  attr_accessor :next

  def initialize(item = nil)
    @item = item
    @next = nil
  end

  def to_s
    "<#{@item.to_s}>"
  end
end
