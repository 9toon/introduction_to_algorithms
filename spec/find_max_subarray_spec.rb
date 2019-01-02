require_relative "../problem/find_max_subarray"

describe "Problem find_max_subarray" do
  let(:prices) { [100, 113, 110, 85, 105, 102, 86, 63, 81, 101, 94, 106, 101, 79, 94, 90, 97] }
  let(:changes) do
    # [13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7]
    prices[1..-1].map.with_index(1) { |price, i| price - prices[i - 1] }
  end
  let(:low) { 1 }
  let(:high) { changes.size }

  it { expect(find_max_subarray(changes, low, high)).to eq([8, 11, 43]) }

  context 'with all minus values' do
    let(:changes) { [-5, -2, -3, -4] }

    it { expect(find_max_subarray(changes, low, high)).to eq([2, 2, -2]) }
  end
end
