require 'spec_helper'
require './node'
require './single_linked_list'

describe SingleLinkedList do
  it 'Should has a size of zero' do
    sll = SingleLinkedList.new

    expect(sll.size).to eq 0
  end

  it 'Should has a nil current attribute' do
    sll = SingleLinkedList.new

    expect(sll.current).to eq nil
  end

  it 'Should has a nil head attribute' do
    sll = SingleLinkedList.new

    expect(sll.head).to eq nil
  end

  it 'Should has a size of one' do
    sll = SingleLinkedList.new('a')

    expect(sll.size).to eq 1
  end

  it 'Should has a not nil current attribute' do
    sll = SingleLinkedList.new('a')

    expect(sll.current).not_to eq nil
  end

  it 'Should has a not nil head attribute' do
    sll = SingleLinkedList.new('a')

    expect(sll.head).not_to eq nil
  end

  it 'Should has a size of one' do
    sll = SingleLinkedList.new

    sll.insert_at_end 'a'

    expect(sll.size).to eq 1
  end

  it 'Should has a "a" current value' do
    sll = SingleLinkedList.new

    sll.insert_at_end 'a'

    expect(sll.current.item).to eq 'a'
  end

  it 'Should has a "a" head value' do
    sll = SingleLinkedList.new

    sll.insert_at_end 'a'

    expect(sll.head.item).to eq 'a'
  end

  it 'Should has a size of five' do
    sll = SingleLinkedList.new

    sll.insert_at_end 'a'
    sll.insert_at_end 'b'
    sll.insert_at_end 'c'
    sll.insert_at_end 'd'
    sll.insert_at_end 'e'

    expect(sll.size).to eq 5
  end

  it 'Should has a "e" current value' do
    sll = SingleLinkedList.new

    sll.insert_at_end 'a'
    sll.insert_at_end 'b'
    sll.insert_at_end 'c'
    sll.insert_at_end 'd'
    sll.insert_at_end 'e'

    expect(sll.current.item).to eq 'e'
  end

  it 'Should has a "e" head value' do
    sll = SingleLinkedList.new

    sll.insert_at_end 'a'
    sll.insert_at_end 'b'
    sll.insert_at_end 'c'
    sll.insert_at_end 'd'
    sll.insert_at_end 'e'

    expect(sll.head.item).to eq 'e'
  end

  it 'Should has a size of five' do
    sll = SingleLinkedList.new

    sll.insert_at_start 'a'
    sll.insert_at_start 'b'
    sll.insert_at_start 'c'
    sll.insert_at_start 'd'
    sll.insert_at_start 'e'

    expect(sll.size).to eq 5
  end

  it 'Should has a "e" current value' do
    sll = SingleLinkedList.new

    sll.insert_at_start 'a'
    sll.insert_at_start 'b'
    sll.insert_at_start 'c'
    sll.insert_at_start 'd'
    sll.insert_at_start 'e'

    expect(sll.current.item).to eq 'e'
  end

  it 'Should has a "a" head value' do
    sll = SingleLinkedList.new

    sll.insert_at_start 'a'
    sll.insert_at_start 'b'
    sll.insert_at_start 'c'
    sll.insert_at_start 'd'
    sll.insert_at_start 'e'

    expect(sll.head.item).to eq 'a'
  end

  it 'Should has a size of five' do
    sll = SingleLinkedList.new

    sll.insert_at_end 'a'
    sll.insert_at_end 'b'
    sll.insert_at_end 'd'
    sll.insert_at_end 'e'
    sll.insert_after_item 'b', 'c'

    expect(sll.size).to eq 5
  end

  it 'Should has a "c" current value' do
    sll = SingleLinkedList.new

    sll.insert_at_end 'a'
    sll.insert_at_end 'b'
    sll.insert_at_end 'd'
    sll.insert_at_end 'e'
    sll.insert_after_item 'b', 'c'

    expect(sll.current.item).to eq 'c'
  end

  it 'Should has a "e" head value' do
    sll = SingleLinkedList.new

    sll.insert_at_end 'a'
    sll.insert_at_end 'b'
    sll.insert_at_end 'd'
    sll.insert_at_end 'e'
    sll.insert_after_item 'b', 'c'

    expect(sll.head.item).to eq 'e'
  end

  it 'Should has a size of five' do
    sll = SingleLinkedList.new

    sll.insert_at_start 'a'
    sll.insert_at_start 'b'
    sll.insert_at_start 'd'
    sll.insert_at_start 'e'
    sll.insert_before_item 'b', 'c'

    expect(sll.size).to eq 5
  end

  it 'Should has a "c" current value' do
    sll = SingleLinkedList.new

    sll.insert_at_start 'a'
    sll.insert_at_start 'b'
    sll.insert_at_start 'd'
    sll.insert_at_start 'e'
    sll.insert_before_item 'b', 'c'

    expect(sll.current.item).to eq 'c'
  end

end
