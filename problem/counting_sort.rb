def counting_sort(arr_a, arr_b, k)
  arr_c = Array.new(k, 0)

  0.upto(arr_a.size - 1) do |j|
    arr_c[arr_a[j] - 1] = arr_c[arr_a[j] - 1] + 1
  end

  0.upto(k - 1) do |i|
    arr_c[i] = arr_c[i]
    arr_c[i] += arr_c[i - 1] unless i.zero?
  end

  (arr_a.size - 1).downto(0) do |j|
    arr_b[arr_c[arr_a[j] - 1] - 1] = arr_a[j]
    arr_c[arr_a[j] - 1] = arr_c[arr_a[j] - 1] - 1
  end

  arr_b
end
