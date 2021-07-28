require 'spec_helper'
require './node'
require './single_linked_list'

describe SingleLinkedList do
  context 'Using a new empty single linked list' do
    describe 'new' do
      it 'should has a size of zero' do
        sll = SingleLinkedList.new

        expect(sll.size).to eq 0
      end

      it 'should has a nil current attribute' do
        sll = SingleLinkedList.new

        expect(sll.current).to eq nil
      end

      it 'should has a nil head attribute' do
        sll = SingleLinkedList.new

        expect(sll.head).to eq nil
      end
    end

    describe 'insert_at_end' do
      it 'should has a size of one' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'

        expect(sll.size).to eq 1
      end

      it 'should has a "a" current value' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'

        expect(sll.current.item).to eq 'a'
      end

      it 'should has a "a" head value' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'

        expect(sll.head.item).to eq 'a'
      end

      it 'should has a size of five' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'

        expect(sll.size).to eq 5
      end

      it 'should has a "e" current value' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'

        expect(sll.current.item).to eq 'e'
      end

      it 'should has a "e" head value' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'

        expect(sll.head.item).to eq 'e'
      end
    end

    describe 'delete_at_end' do
      it 'should has a size of zero' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.delete_at_end

        expect(sll.size).to eq 0
      end

      it 'should has a nil current attribute' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.delete_at_end

        expect(sll.current).to eq nil
      end

      it 'should has a nil head attribute' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.delete_at_end

        expect(sll.head).to eq nil
      end

      it 'should has a size of zero' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.delete_at_end

        expect(sll.size).to eq 0
      end

      it 'should has a nil current attribute' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.delete_at_end

        expect(sll.current).to eq nil
      end

      it 'should has a nil head attribute' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.delete_at_end

        expect(sll.head).to eq nil
      end

      it 'should has a size of four' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.delete_at_end

        expect(sll.size).to eq 4
      end

      it 'should has a "d" current value' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.delete_at_end

        expect(sll.current.item).to eq 'd'
      end

      it 'should has a "d" head value' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.delete_at_end

        expect(sll.head.item).to eq 'd'
      end

      it 'should has a size of four' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.delete_at_end

        expect(sll.size).to eq 4
      end

      it 'should has a "e" current value' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.delete_at_end

        expect(sll.current.item).to eq 'e'
      end

      it 'should has a "b" head value' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.delete_at_end

        expect(sll.head.item).to eq 'b'
      end
    end

    describe 'insert_at_start' do
      it 'should has a size of one' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'

        expect(sll.size).to eq 1
      end

      it 'should has a "a" current value' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'

        expect(sll.current.item).to eq 'a'
      end

      it 'should has a "a" head value' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'

        expect(sll.head.item).to eq 'a'
      end

      it 'should has a size of five' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'

        expect(sll.size).to eq 5
      end

      it 'should has a "e" current value' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'

        expect(sll.current.item).to eq 'e'
      end

      it 'should has a "a" head value' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'

        expect(sll.head.item).to eq 'a'
      end
    end

    describe 'delete_at_start' do
      it 'should has a size of zero' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.delete_at_start

        expect(sll.size).to eq 0
      end

      it 'should has a nil current attribute' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.delete_at_start

        expect(sll.current).to eq nil
      end

      it 'should has a nil head attribute' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.delete_at_start

        expect(sll.head).to eq nil
      end

      it 'should has a size of zero' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.delete_at_start

        expect(sll.size).to eq 0
      end

      it 'should has a nil current attribute' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.delete_at_start

        expect(sll.current).to eq nil
      end

      it 'should has a nil head attribute' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.delete_at_start

        expect(sll.head).to eq nil
      end

      it 'should has a size of four' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.delete_at_start

        expect(sll.size).to eq 4
      end

      it 'should has a "b" current value' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.delete_at_start

        expect(sll.current.item).to eq 'b'
      end

      it 'should has a "d" head value' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.delete_at_start

        expect(sll.head.item).to eq 'e'
      end

      it 'should has a size of four' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.delete_at_start

        expect(sll.size).to eq 4
      end

      it 'should has a "e" current value' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.delete_at_start

        expect(sll.current.item).to eq 'd'
      end

      it 'should has a "b" head value' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.delete_at_start

        expect(sll.head.item).to eq 'a'
      end
    end

    describe 'insert_after_item' do
      it 'should has a size of zero' do
        sll = SingleLinkedList.new

        sll.insert_after_item nil, 'a'

        expect(sll.size).to eq 0
      end

      it 'should has a size of zero' do
        sll = SingleLinkedList.new

        sll.insert_after_item 'a', nil

        expect(sll.size).to eq 0
      end

      it 'should has a size of zero' do
        sll = SingleLinkedList.new

        sll.insert_after_item 'a', 'b'

        expect(sll.size).to eq 0
      end

      it 'should has a nil current attribute' do
        sll = SingleLinkedList.new

        sll.insert_after_item nil, 'a'

        expect(sll.current).to eq nil
      end

      it 'should has a nil current attribute' do
        sll = SingleLinkedList.new

        sll.insert_after_item 'a', nil

        expect(sll.current).to eq nil
      end

      it 'should has a nil current attribute' do
        sll = SingleLinkedList.new

        sll.insert_after_item 'a', 'b'

        expect(sll.current).to eq nil
      end

      it 'should has a nil head attribute' do
        sll = SingleLinkedList.new

        sll.insert_after_item nil, 'a'

        expect(sll.head).to eq nil
      end

      it 'should has a nil head attribute' do
        sll = SingleLinkedList.new

        sll.insert_after_item 'a', nil

        expect(sll.head).to eq nil
      end

      it 'should has a nil head attribute' do
        sll = SingleLinkedList.new

        sll.insert_after_item 'a', 'b'

        expect(sll.head).to eq nil
      end

      it 'should has a size of five' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.insert_at_end 'b'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.insert_after_item 'b', 'c'

        expect(sll.size).to eq 5
      end

      it 'should has a "c" current value' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.insert_at_end 'b'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.insert_after_item 'b', 'c'

        expect(sll.current.item).to eq 'c'
      end

      it 'should has a "e" head value' do
        sll = SingleLinkedList.new

        sll.insert_at_end 'a'
        sll.insert_at_end 'b'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.insert_after_item 'b', 'c'

        expect(sll.head.item).to eq 'e'
      end
    end

    describe 'insert_before_item' do
      it 'should has a size of zero' do
        sll = SingleLinkedList.new

        sll.insert_before_item nil, 'a'

        expect(sll.size).to eq 0
      end

      it 'should has a size of zero' do
        sll = SingleLinkedList.new

        sll.insert_before_item 'a', nil

        expect(sll.size).to eq 0
      end

      it 'should has a size of zero' do
        sll = SingleLinkedList.new

        sll.insert_before_item 'a', 'b'

        expect(sll.size).to eq 0
      end

      it 'should has a nil current attribute' do
        sll = SingleLinkedList.new

        sll.insert_before_item nil, 'a'

        expect(sll.current).to eq nil
      end

      it 'should has a nil current attribute' do
        sll = SingleLinkedList.new

        sll.insert_before_item 'a', nil

        expect(sll.current).to eq nil
      end

      it 'should has a nil current attribute' do
        sll = SingleLinkedList.new

        sll.insert_before_item 'a', 'b'

        expect(sll.current).to eq nil
      end

      it 'should has a nil head attribute' do
        sll = SingleLinkedList.new

        sll.insert_before_item nil, 'a'

        expect(sll.head).to eq nil
      end

      it 'should has a nil head attribute' do
        sll = SingleLinkedList.new

        sll.insert_before_item 'a', nil

        expect(sll.head).to eq nil
      end

      it 'should has a nil head attribute' do
        sll = SingleLinkedList.new

        sll.insert_before_item 'a', 'b'

        expect(sll.head).to eq nil
      end

      it 'should has a size of five' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.insert_at_start 'b'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.insert_before_item 'b', 'c'

        expect(sll.size).to eq 5
      end

      it 'should has a "c" current value' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.insert_at_start 'b'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.insert_before_item 'b', 'c'

        expect(sll.current.item).to eq 'c'
      end

      it 'should has a "e" head value' do
        sll = SingleLinkedList.new

        sll.insert_at_start 'a'
        sll.insert_at_start 'b'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.insert_before_item 'b', 'c'

        expect(sll.head.item).to eq 'a'
      end
    end
  end

  context 'Using a new not empty single linked list' do
    describe 'new' do
      it 'should has a size of one' do
        sll = SingleLinkedList.new 'a'

        expect(sll.size).to eq 1
      end

      it 'should has a not nil current attribute' do
        sll = SingleLinkedList.new 'a'

        expect(sll.current).not_to eq nil
      end

      it 'should has a not nil head attribute' do
        sll = SingleLinkedList.new 'a'

        expect(sll.head).not_to eq nil
      end
    end

    describe 'insert_at_end' do
      it 'should has a size of two' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'

        expect(sll.size).to eq 2
      end

      it 'should has a "b" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'

        expect(sll.current.item).to eq 'b'
      end

      it 'should has a "b" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'

        expect(sll.head.item).to eq 'b'
      end

      it 'should has a size of five' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'

        expect(sll.size).to eq 5
      end

      it 'should has a "e" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'

        expect(sll.current.item).to eq 'e'
      end

      it 'should has a "e" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'

        expect(sll.head.item).to eq 'e'
      end
    end

    describe 'delete_at_end' do
      it 'should has a size of one' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.delete_at_end

        expect(sll.size).to eq 1
      end

      it 'should has a not nil current attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.delete_at_end

        expect(sll.current).not_to eq nil
      end

      it 'should has a "a" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.delete_at_end

        expect(sll.current.item).to eq 'a'
      end

      it 'should has a not nil head attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.delete_at_end

        expect(sll.head).not_to eq nil
      end

      it 'should has a "a" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.delete_at_end

        expect(sll.head.item).to eq 'a'
      end

      it 'should has a size of one' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.delete_at_end

        expect(sll.size).to eq 1
      end

      it 'should has a not nil current attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.delete_at_end

        expect(sll.current).not_to eq nil
      end

      it 'should has a "a" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.delete_at_end

        expect(sll.current.item).to eq 'b'
      end

      it 'should has a not nil head attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.delete_at_end

        expect(sll.head).not_to eq nil
      end

      it 'should has a "a" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.delete_at_end

        expect(sll.head.item).to eq 'b'
      end

      it 'should has a size of four' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.delete_at_end

        expect(sll.size).to eq 4
      end

      it 'should has a "d" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.delete_at_end

        expect(sll.current.item).to eq 'd'
      end

      it 'should has a "d" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.delete_at_end

        expect(sll.head.item).to eq 'd'
      end

      it 'should has a size of four' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.delete_at_end

        expect(sll.size).to eq 4
      end

      it 'should has a "e" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.delete_at_end

        expect(sll.current.item).to eq 'e'
      end

      it 'should has a "b" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.delete_at_end

        expect(sll.head.item).to eq 'b'
      end
    end

    describe 'insert_at_start' do
      it 'should has a size of two' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'

        expect(sll.size).to eq 2
      end

      it 'should has a "b" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'

        expect(sll.current.item).to eq 'b'
      end

      it 'should has a "b" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'

        expect(sll.head.item).to eq 'a'
      end

      it 'should has a size of five' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'

        expect(sll.size).to eq 5
      end

      it 'should has a "e" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'

        expect(sll.current.item).to eq 'e'
      end

      it 'should has a "a" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'

        expect(sll.head.item).to eq 'a'
      end
    end

    describe 'delete_at_start' do
      it 'should has a size of one' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.delete_at_start

        expect(sll.size).to eq 1
      end

      it 'should has a not nil current attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.delete_at_start

        expect(sll.current).not_to eq nil
      end

      it 'should has a not nil head attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.delete_at_start

        expect(sll.head).not_to eq nil
      end

      it 'should has a size of one' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.delete_at_start

        expect(sll.size).to eq 1
      end

      it 'should has a not nil current attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.delete_at_start

        expect(sll.current).not_to eq nil
      end

      it 'should has a "a" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.delete_at_start

        expect(sll.current.item).to eq 'a'
      end

      it 'should has a not nil head attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.delete_at_start

        expect(sll.head).not_to eq nil
      end

      it 'should has a "a" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.delete_at_start

        expect(sll.current.item).to eq 'a'
      end

      it 'should has a size of four' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.delete_at_start

        expect(sll.size).to eq 4
      end

      it 'should has a "b" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.delete_at_start

        expect(sll.current.item).to eq 'b'
      end

      it 'should has a "d" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.insert_at_end 'c'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.delete_at_start

        expect(sll.head.item).to eq 'e'
      end

      it 'should has a size of four' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.delete_at_start

        expect(sll.size).to eq 4
      end

      it 'should has a "d" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.delete_at_start

        expect(sll.current.item).to eq 'd'
      end

      it 'should has a "a" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.insert_at_start 'c'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.delete_at_start

        expect(sll.head.item).to eq 'a'
      end
    end

    describe 'insert_after_item' do
      it 'should has a size of one' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item nil, 'b'

        expect(sll.size).to eq 1
      end

      it 'should has a size of one' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item 'a', nil

        expect(sll.size).to eq 1
      end

      it 'should has a size of two' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item 'a', 'b'

        expect(sll.size).to eq 2
      end

      it 'should has a not nil current attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item nil, 'b'

        expect(sll.current).not_to eq nil
      end

      it 'should has a "a" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item nil, 'b'

        expect(sll.current.item).to eq 'a'
      end

      it 'should has a not nil current attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item 'a', nil

        expect(sll.current).not_to eq nil
      end

      it 'should has a "a" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item nil, 'b'

        expect(sll.current.item).to eq 'a'
      end

      it 'should has a not nil current attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item 'a', 'b'

        expect(sll.current).not_to eq nil
      end

      it 'should has a "a" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item nil, 'b'

        expect(sll.current.item).to eq 'a'
      end

      it 'should has a not nil head attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item nil, 'b'

        expect(sll.head).not_to eq nil
      end

      it 'should has a "a" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item nil, 'b'

        expect(sll.head.item).to eq 'a'
      end

      it 'should has a not nil head attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item 'a', nil

        expect(sll.head).not_to eq nil
      end

      it 'should has a not nil head attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_after_item 'a', 'b'

        expect(sll.head).not_to eq nil
      end

      it 'should has a size of five' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.insert_after_item 'b', 'c'

        expect(sll.size).to eq 5
      end

      it 'should has a "c" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.insert_after_item 'b', 'c'

        expect(sll.current.item).to eq 'c'
      end

      it 'should has a "e" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_end 'b'
        sll.insert_at_end 'd'
        sll.insert_at_end 'e'
        sll.insert_after_item 'b', 'c'

        expect(sll.head.item).to eq 'e'
      end
    end

    describe 'insert_before_item' do
      it 'should has a size of one' do
        sll = SingleLinkedList.new 'a'

        sll.insert_before_item nil, 'b'

        expect(sll.size).to eq 1
      end

      it 'should has a size of one' do
        sll = SingleLinkedList.new 'a'

        sll.insert_before_item 'a', nil

        expect(sll.size).to eq 1
      end

      it 'should has a size of two' do
        sll = SingleLinkedList.new 'a'

        sll.insert_before_item 'a', 'b'

        expect(sll.size).to eq 2
      end

      it 'should has a not nil current attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_before_item nil, 'a'

        expect(sll.current).not_to eq nil
      end

      it 'should has a not nil current attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_before_item 'a', nil

        expect(sll.current).not_to eq nil
      end

      it 'should has a not nil current attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_before_item 'a', 'b'

        expect(sll.current).not_to eq nil
      end

      it 'should has a not nil head attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_before_item nil, 'a'

        expect(sll.head).not_to eq nil
      end

      it 'should has a not nil head attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_before_item 'a', nil

        expect(sll.head).not_to eq nil
      end

      it 'should has a not nil head attribute' do
        sll = SingleLinkedList.new 'a'

        sll.insert_before_item 'a', 'b'

        expect(sll.head).not_to eq nil
      end

      it 'should has a size of five' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.insert_before_item 'b', 'c'

        expect(sll.size).to eq 5
      end

      it 'should has a "c" current value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.insert_before_item 'b', 'c'

        expect(sll.current.item).to eq 'c'
      end

      it 'should has a "e" head value' do
        sll = SingleLinkedList.new 'a'

        sll.insert_at_start 'b'
        sll.insert_at_start 'd'
        sll.insert_at_start 'e'
        sll.insert_before_item 'b', 'c'

        expect(sll.head.item).to eq 'a'
      end
    end
  end
end
