def heap_sort(arr)
  (arr.length).downto(2) do |i|
    tmp = arr[0]
    arr[0] = arr[i - 1]
    arr[i - 1] = tmp

    arr.heap_size -= 1

    max_heapify(arr, 1)
  end

  arr
end

def build_max_heap(arr)
  arr.heap_size = arr.length

  (arr.length / 2).downto(1) do |i|
    max_heapify(arr, i)
  end

  arr
end

def max_heapify(arr, i)
  l = left(i)
  r = right(i)

  if l <= arr.heap_size && arr[l - 1] > arr[i - 1]
    largest = l
  else
    largest = i
  end

  if r <= arr.heap_size && arr[r - 1] > arr[largest - 1]
    largest = r
  end

  if largest != i
    tmp = arr[largest - 1]
    arr[largest - 1] = arr[i - 1]
    arr[i - 1] = tmp

    max_heapify(arr, largest)
  end

  arr
end

def parent(i)
  i / 2
end

def left(i)
  2 * i
end

def right(i)
  2 * i + 1
end

class MyHeap < Array
  attr_accessor :heap_size
end
