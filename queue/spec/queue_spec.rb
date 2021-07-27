require 'spec_helper'
require './queue'

describe Queue do
  it 'Should create a new queue' do
    queue = Queue.new

    expect(queue.class).to be Queue
  end

  it 'Should has a size of zero' do
    queue = Queue.new

    expect(queue.size).to eq 0
  end

  it 'Should has a size of three after enqueue three' do
    queue = Queue.new

    queue.enqueue 'a'
    queue.enqueue 'b'
    queue.enqueue 'c'

    expect(queue.size).to eq 3
  end

  it 'Should has a head element equals to "10"' do
    queue = Queue.new

    queue.enqueue '10'
    queue.enqueue 2
    queue.enqueue 'a'

    expect(queue.head).to eq '10'
  end

  it 'Should has a head element equals to "a"' do
    queue = Queue.new

    queue.enqueue '10'
    queue.enqueue 2
    queue.enqueue 'a'

    queue.dequeue
    queue.dequeue

    queue.enqueue 'b'
    queue.enqueue 'c'

    expect(queue.head).to eq 'a'
  end

  it 'Should has a size of zero after clear' do
    queue = Queue.new

    queue.enqueue '10'
    queue.enqueue 2
    queue.enqueue 'a'

    queue.clear_queue

    expect(queue.size).to eq 0
  end




end

