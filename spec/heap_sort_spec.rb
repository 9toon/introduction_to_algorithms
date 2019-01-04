require_relative "../problem/heap_sort"

describe "Problem heap_sort" do
  describe '#heap_sort' do
    let(:arr) { build_max_heap(MyHeap.new([4, 1, 3, 2, 16, 9, 10, 14, 8, 7])) }

    it { expect(heap_sort(arr)).to eq([1, 2, 3, 4, 7, 8, 9, 10, 14, 16]) }
  end

  describe '#build_max_heap' do
    let(:arr) { MyHeap.new([4, 1, 3, 2, 16, 9, 10, 14, 8, 7]) }

    it { expect(build_max_heap(arr)).to eq([16, 14, 10, 8, 7, 9, 3, 2, 4, 1]) }
  end

  describe '#max_heapify' do
    let(:arr) { MyHeap.new([16, 4, 10, 14, 7, 9, 3, 2, 8, 1]) }
    let(:i) { 2 }

    before { arr.heap_size = arr.size }

    it { expect(max_heapify(arr, i)).to eq([16, 14, 10, 8, 7, 9, 3, 2, 4, 1]) }
  end

  describe '#parent' do
    it { expect(parent(2)).to eq(1) }
  end

  describe '#left' do
    it { expect(left(2)).to eq(4) }
  end

  describe '#right' do
    it { expect(right(2)).to eq(5) }
  end
end
