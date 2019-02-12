require_relative "../problem/quick_sort"

describe "Problem quick_sort" do
  describe '#quick_sort' do
    let(:arr) { [2, 8, 7, 1, 3, 5, 6, 4] }
    let(:p) { 1 }
    let(:r) { arr.size }
    let!(:expected) { arr.sort }

    it { expect(quick_sort(arr, p, r)).to eq(expected) }

    context 'with large array' do
      let(:arr) { (1..1_000_000).to_a.shuffle }
      let!(:expected) { (1..1_000_000).to_a }

      it { expect(quick_sort(arr, p, r)).to eq(expected) }
    end
  end
end
