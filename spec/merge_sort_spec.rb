require_relative "../problem/merge_sort"

describe "Problem merge_sort" do
  describe '#merge_sort' do
    let(:arr) { [5, 2, 4, 7, 1, 3, 2, 6] }
    let(:p) { 1 }
    let(:r) { arr.size }
    let!(:expected) { arr.sort }

    it { expect(merge_sort(arr, p, r)).to eq(expected) }

    context 'with large array' do
      let(:arr) { (1..1_000_000).to_a.shuffle }
      let!(:expected) { (1..1_000_000).to_a }

      it { expect(merge_sort(arr, p, r)).to eq(expected) }
    end
  end
end
