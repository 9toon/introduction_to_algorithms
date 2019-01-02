def merge_sort(arr, p, r)
  return arr if arr.size <= 1

  if p < r
    q = (p + r) / 2
    merge_sort(arr, p, q)
    merge_sort(arr, q + 1, r)

    merge(arr, p, q, r)
  end

  arr
end

def merge(arr, p, q, r)
  n_1 = q - p + 1
  n_2 = r - q

  l_arr = []
  0.upto(n_1 - 1).each do |i|
    l_arr[i] = arr[p + i - 1]
  end

  r_arr = []
  0.upto(n_2 - 1).each do |j|
    r_arr[j] = arr[q + j]
  end

  l_arr << Float::INFINITY
  r_arr << Float::INFINITY

  i = j = 0
  p.upto(r) do |k|
    if l_arr[i] <= r_arr[j]
      arr[k - 1] = l_arr[i]
      i += 1
    else
      arr[k - 1] = r_arr[j]
      j += 1
    end
  end

  arr
end
