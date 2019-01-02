def find_max_subarray(arr, low, high)
  if high == low
    return [low, high, arr[low - 1]]
  else
    mid = (low + high) / 2

    left_low, left_high, left_sum = find_max_subarray(arr, low, mid)
    right_low, right_high, right_sum = find_max_subarray(arr, mid + 1, high)
    cross_low, cross_high, cross_sum = find_max_crossing_subarray(arr, low, mid, high)

    if left_sum >= right_sum && left_sum >= cross_sum
      return [left_low, left_high, left_sum]
    elsif right_sum >= left_sum && right_sum >= cross_sum
      return [right_low, right_high, right_sum]
    else
      return [cross_low, cross_high, cross_sum]
    end
  end
end

def find_max_crossing_subarray(arr, low, mid, high)
  left_sum = -Float::INFINITY
  sum = 0
  max_left = nil
  mid.downto(low).each do |i|
    sum = sum + arr[i - 1]
    if sum > left_sum
      left_sum = sum
      max_left = i
    end
  end

  right_sum = -Float::INFINITY
  sum = 0
  max_right = nil
  (mid + 1).upto(high).each do |j|
    sum = sum + arr[j - 1]
    if sum > right_sum
      right_sum = sum
      max_right = j
    end
  end

  [max_left, max_right, left_sum + right_sum]
end
