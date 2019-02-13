require_relative "../problem/counting_sort"

describe "Problem counting_sort" do
  describe '#counting_sort' do
    let(:arr_a) { [2, 8, 7, 1, 3, 5, 6, 4] }
    let(:arr_b) { [] }
    let(:k) { arr_a.size }
    let!(:expected) { arr_a.sort }

    it { expect(counting_sort(arr_a, arr_b, k)).to eq(expected) }

    context 'with large array' do
      let(:arr_a) { (1..1_000_000).to_a.shuffle }
      let!(:expected) { (1..1_000_000).to_a }

      it { expect(counting_sort(arr_a, arr_b, k)).to eq(expected) }
    end
  end
end
