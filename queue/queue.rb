class Queue
  attr_reader :head

  def initialize
    @head = nil
    @queue = Array.new
  end

  def enqueue(item)
    @queue.insert(0, item)
    @head = @queue[@queue.size-1]
  end

  def dequeue
    return nil if @queue.size.zero?

    @queue.pop
    @head = @queue[@queue.size-1]
  end

  def size
    @queue.size
  end

  def clear_queue
    @queue.clear
  end

  private

  def display_empty_queue
    puts '-'*10
    puts '|        |'
    puts '-'*10
  end

  def display_queue_body
    puts '-'*10
    @queue.each { |element| puts "#{element.to_s.center( 8, ' ')}"}
    puts '-'*10
  end

end
