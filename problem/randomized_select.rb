require_relative "./quick_sort"

def randomized_select(arr, p, r, i)
  return arr[p - 1] if p == r

  q = randomized_partition(arr, p, r)
  k = q - p + 1
  if i == k
    arr[q - 1]
  elsif i < k
    randomized_select(arr, p, q - 1, i)
  else
    randomized_select(arr, q + 1, r, i - k)
  end
end
