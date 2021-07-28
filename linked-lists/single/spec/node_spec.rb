require 'spec_helper'
require './node'

describe Node do
  it 'Should has to be Node class' do
    node = Node.new

    expect(node.class).to be Node
  end

  it 'Should has a nil item' do
    node = Node.new

    expect(node.item).to be nil
  end


  it 'Should has a item with value 10' do
    node = Node.new(10)

    expect(node.item).to eq 10
  end

  it 'Should display "<> string"' do
    node = Node.new

    expect(node.to_s).to eq '<>'
  end


  it 'Should display "<abc>" string' do
    node = Node.new('abc')

    expect(node.to_s).to eq '<abc>'
  end

  it 'Should has a nil next attribute' do
    node = Node.new

    expect(node.next).to eq nil
  end

  it 'Should has a not nil next attribute' do
    node = Node.new('a')
    node.next = Node.new

    expect(node.next).not_to eq nil
  end

  it 'Should has a value of nil on the next item' do
    node = Node.new('a')
    node.next = Node.new

    expect(node.next.item).to eq nil
  end

  it 'Should has a value of "b" on the next item' do
    node = Node.new('a')
    node.next = Node.new('b')

    expect(node.next.item).to eq 'b'
  end


end

