def quick_sort(arr, p, r)
  if p < r
    q = partition(arr, p, r)
    quick_sort(arr, p, q - 1)
    quick_sort(arr, q + 1, r)
  end

  arr
end

def partition(arr, p, r)
  x = arr[r - 1]
  i = p - 1
  (p - 1).upto(r - 1 - 1) do |j|
    if arr[j] <= x
      i += 1

      tmp = arr[i - 1]
      arr[i - 1] = arr[j]
      arr[j] = tmp
    end
  end

  tmp = arr[i - 1 + 1]
  arr[i - 1 + 1] = arr[r - 1]
  arr[r - 1] = tmp

  return i + 1
end
