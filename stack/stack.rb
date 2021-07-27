
class Stack
  attr_reader :top

  def initialize()
    @top = nil
    @stack = Array.new
  end

  def push_item(item)
    @stack.insert(0, item)
    @top = @stack[0]
  end

  def pop_item
    return nil if @stack.size.zero?

    item_popped = @stack.delete_at(0)
    @top = @stack[0]
    item_popped
  end

  def display_stack
    if @stack.size.zero?
      display_empty_stack
    else
      display_stack_body
    end
  end

  def clear_stack
    return nil if @stack.size.zero?

    @stack.clear
    @top = nil
  end

  private
  def display_stack_body
    puts '-'*10
    @stack.each do |element|
      puts "|#{element.to_s.center(8,' ')}|"
      puts '-'*10
    end
  end

  def display_empty_stack
    puts '-'*10
    puts '|        |'
    puts '-'*10
  end
end

puts 'Create a stack and push six items to it'
stack = Stack.new
stack.push_item 'a'
stack.push_item 'b'
stack.push_item 'c'
stack.push_item 1
stack.push_item 2
stack.push_item 3

puts "Top element is #{stack.top}\n"

stack.display_stack
puts '#'*30

puts 'Pop two items from stack'
stack.pop_item
stack.pop_item

puts "Top element is #{stack.top}\n"

stack.display_stack
puts '#'*30

puts 'Pop two items from stack'
stack.pop_item
stack.pop_item

puts "Top element is #{stack.top}\n"

stack.display_stack
puts '#'*30

puts 'Clear stack, then stack 25 numeric items and the clear stack again'
stack.clear_stack

puts "Top element is #{stack.top}\n"

stack.display_stack
puts ''

25.times do |value|
  stack.push_item value
end

puts "Top element is #{stack.top}\n"

stack.display_stack
puts ''

stack.clear_stack

puts "Top element is #{stack.top}\n"

stack.display_stack
puts '#'*30
