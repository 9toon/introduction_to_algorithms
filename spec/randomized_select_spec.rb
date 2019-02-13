require_relative "../problem/randomized_select"

describe "Problem randomized_select" do
  describe '#randomized_select' do
    let(:arr) { [2, 8, 7, 1, 3, 5, 6, 4] }
    let(:p) { 1 }
    let(:r) { arr.size }
    let(:i) { 4 }
    let!(:expected) { arr.sort[i - 1] }

    it { expect(randomized_select(arr, p, r, i)).to eq(expected) }

    context 'with large array' do
      let(:arr) { (1..1_000_000).to_a.shuffle }
      let(:i) { arr.sample }

      it { expect(randomized_select(arr, p, r, i)).to eq(expected) }
    end
  end
end
