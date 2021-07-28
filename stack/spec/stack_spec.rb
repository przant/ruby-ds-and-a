require 'spec_helper'
require './stack'

describe Stack do
  it 'Should create a new stack with size zero' do
    stack = Stack.new

    expect(stack.class).to be Stack
    expect(stack.size).to eq 0
  end

  it 'Should has a size of 3' do
    stack = Stack.new

    stack.push_item 1
    stack.push_item 2
    stack.push_item 3

    expect(stack.size).to eq 3
  end

  it 'Has a top item equals "c"' do
    stack = Stack.new

    stack.push_item 1
    stack.push_item 2
    stack.push_item 'c'

    expect(stack.top).to eql 'c'
  end

  it 'Item popped should be "10"' do
    stack = Stack.new

    stack.push_item 'a'
    stack.push_item 2
    stack.push_item "10"

    expect(stack.pop_item).to eq "10"
  end

  it 'Should has a size of zero after clear stack' do
    stack = Stack.new

    100.times { |value| stack.push_item value }
    stack.clear_stack

    expect(stack.size).to eq 0
  end

  it 'Should has a top_item equals to nil after clear stack' do
    stack = Stack.new

    100.times { |value| stack.push_item value }
    stack.clear_stack

    expect(stack.top).to eq nil
  end


end
