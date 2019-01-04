class MyHeap < Array
  attr_reader :heap_size

  def initialize(array)
    super

    build_max_heap
  end

  def heap_sort
    (arr.length).downto(2) do |i|
      tmp = arr[0]
      arr[0] = arr[i - 1]
      arr[i - 1] = tmp

      @heap_size -= 1

      max_heapify(1)
    end

    arr
  end

  private

  def build_max_heap
    @heap_size = arr.length

    (arr.length / 2).downto(1) do |i|
      max_heapify(i)
    end
  end

  def max_heapify(i)
    l = left(i)
    r = right(i)

    if l <= heap_size && arr[l - 1] > arr[i - 1]
      largest = l
    else
      largest = i
    end

    if r <= heap_size && arr[r - 1] > arr[largest - 1]
      largest = r
    end

    if largest != i
      tmp = arr[largest - 1]
      arr[largest - 1] = arr[i - 1]
      arr[i - 1] = tmp

      max_heapify(largest)
    end
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

  def arr
    self
  end
end
