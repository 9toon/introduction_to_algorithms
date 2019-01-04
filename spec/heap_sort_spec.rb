require_relative "../problem/heap_sort"

describe "MyHeap" do
  describe '#heap_sort' do
    let(:items) { [4, 1, 3, 2, 16, 9, 10, 14, 8, 7] }
    let(:heap) { MyHeap.new(items) }

    it { expect(heap.heap_sort).to eq(items.sort) }

    context 'with huge num of items' do
      let(:items) { (1..100_000).to_a.shuffle }

      it { expect(heap.heap_sort).to eq(items.sort) }
    end
  end
end
