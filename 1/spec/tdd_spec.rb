require 'spec_helper'

describe Tree do
  subject{ described_class.new }

  describe '#add_node' do
    context 'first element' do
      it 'sets as root' do
        node = Node.new(1)
        subject.add_node(node)
        expect(subject.root).to eq(node)
      end

      it 'returns 0' do
        node = Node.new(1)
        expect(subject.add_node(node)).to eq(0)
      end
    end

    context 'lower element' do
      it 'sets as left node' do
        subject.add_node(Node.new(1))
        lower_element = Node.new(-2)

        subject.add_node(lower_element)
        expect(subject.root.left_node).to eq(lower_element)
      end
    end

    context 'greater element' do
      it 'sets as right node' do
        subject.add_node(Node.new(1))
        greater_element = Node.new(4)

        subject.add_node(greater_element)
        expect(subject.root.right_node).to eq(greater_element)
      end
    end

    context 'equal element' do
      it 'returns 1' do
        subject.add_node(Node.new(1))
        equal_element = Node.new(1)

        expect(subject.add_node(equal_element)).to eq(1)
      end
    end
  end
end
