
class SingleLinkedList
  attr_reader :size, :head, :current

  def initialize(item = nil)
    @list = item.nil? ? nil: Node.new(item)
    @size = item.nil? ? 0 : 1
    @head = @list
    @current = @list
  end

  def insert_at_end(item)
    return nil if item.nil?

    insert_end item
    @size += 1
  end

  def insert_at_start(item)
    return nil if item.nil?

    insert_start item
    @size += 1
  end

  def insert_after_item(item, value)
    return nil if @list.nil? || value.nil?

    return insert_at_end item if @size == 1

    node = find_item item
    if node.nil?
      return nil
    else
      @size += 1
      insert_after node, value
    end
  end

  def insert_before_item(item, value)
    return nil if @list.nil? || value.nil?

    return insert_at_start item if @size == 1

    node = find_item_before item

    if node.nil?
      return nil
    else
      @size += 1
      insert_before node, value
    end
  end

  private

  def insert_end(item)
    if @list.nil?
      insert_in_empty item
    else
      new_end_node item
    end
  end

  def insert_start(item)
    if @list.nil?
      insert_in_empty item
    else
      @current = Node.new item
      @current.next = @list
      @list = @current
    end
  end

  def insert_after(node, value)
    if @head.equal? node
      new_end_node value
      @current = @head
      node = nil
    else
      new_next_node node, value
      @current = @current.next
      node = nil
    end
  end

  def insert_before(node, item)
    new_next_node node, item
    @current = @current.next
    node = nil
  end

  def insert_in_empty(item)
    @list = Node.new item
    @head = @list
    @current = @head
  end

  def new_end_node(item)
    @head.next = Node.new item
    @current = @head.next
    @head = @current
  end

  def new_next_node(node, item)
    @current = node
    node = Node.new item
    node.next = @current.next
    @current.next = node
  end

  def new_node_before(node, item)
    @current = node
    node = Node.new item
    node.next = @current.next
    @current.next = node
  end

  def find_item(item)
    return @head if @head.item == item

    curr_node = @list

    while curr_node
      return curr_node if curr_node.item == item
      curr_node = curr_node.next
    end
  end

  def find_item_before(item)
    return @list if @list.item == item

    curr_node = @list

    while curr_node.next
      return curr_node if curr_node.next.item == item
      curr_node = curr_node.next
    end
  end
end
