# frozen_string_literal: true

def bubble_sort(arr)
  j = 0
  while j < arr.length - 1
    i = 0
    while i < arr.length - 1
      if arr[i] > arr[i + 1]
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
      end
      i += 1
    end
    j += 1
  end

  arr
end

result = bubble_sort([4, 3, 78, 2, 0, 2])
puts result.inspect
