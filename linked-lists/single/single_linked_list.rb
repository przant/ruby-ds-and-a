
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

  def delete_at_end
    return nil if @list.nil?

    delete_end
    @size -= 1
  end

  def insert_at_start(item)
    return nil if item.nil?

    insert_start item
    @size += 1
  end

  def delete_at_start
    return nil if @list.nil?

    delete_start
    @size -=1
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

  def delete_after_item(item)
    return nil if @list.nil? || @size == 1

    if @head.item == item
      continue
    elsif @list.item && @size == 2
      @list.next = nil
      @head = @current = @list
    else
      delete_after item
    end
    @size -= 1
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

  def delete_before_item(item)
    return nil if @list.nil? || @size == 1

    if @list.item == item
      continue
    elsif @head.item == item && @size == 2
      node = @list
      @list = @current = @head
      node = nil
    else
      delete_before item
    end
    @size -= 1
  end

  private

  def insert_end(item)
    if @list.nil?
      insert_in_empty item
    else
      new_end_node item
    end
  end

  def delete_end
    if @size == 1
      @list = @head = @current = nil
    elsif @size == 2
      @head = @current = @list
      @head.next = @current.next = @list.next = nil
    else
      destroy_end_node
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

  def delete_start
    if @size == 1
      @list = @head = @current = nil
    elsif @size == 2
      node_to_delete = @list
      @list = @head = @current = node_to_delete.next
      node_to_delete = nil
    else
      destroy_start_node
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

  def delete_after(item)
    node = find_item item
    node_to_delete = node.next

    if node_to_delete.next.nil?
      node.next = nil
      @head = @current = node
    else
      node.next = node_to_delete.next
      @current = node
    end
    node_to_delete.next = nil
    node_to_delete = nil
  end

  def insert_before(node, item)
    new_next_node node, item
    @current = @current.next
    node = nil
  end

  def delete_before(item)
    node_to_delete = find_item_before item
    node_before = find_item_before node_to_delete.item

    if node_to_delete.equal? @list
      @list = node_to_delete.next
      @current = @list
    else
      node_before.next = node_to_delete.next
      @current = node_before
    end
    node_to_delete.next = nil
    node_to_delete = nil
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
    @head.next = @current.next = nil
  end

  def destroy_end_node
    node_before = find_item_before @head.item

    if @head.equal? @current
      @head = @current = node_before
      @head.next = @current.next = nil
    else
      @head = node_before
      @head.next = nil
    end
    node_before = nil
  end

  def destroy_start_node
    start_node = @list
    @list = @current = start_node.next
    start_node = nil
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
