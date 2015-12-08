def merge_sort(array , collector = [])

  puts "starting array"

  p array


  if (array.length > 1)
  # recursive call

    left_array =  array[0..array.length/2-1]
    right_array = array[ array.length/2 .. (array.length - 1)]

    result_left = merge_sort(left_array)
    result_right = merge_sort(right_array)

    p merge(result_left, result_right)

  else
  # base case
  p array
  end

end

def merge(array_left, array_right)
  combined = []

  total_elements = array_left.length + array_right.length

  i = 0
  j = 0
  k = 0


  while (k < total_elements ) do


    if (array_left[i] && array_right[j] && array_left[i] < array_right[j])
      combined[k] = array_left[i]
      i = i + 1
    elsif(array_left[i] && array_right[j] && array_left[i] > array_right[j])
      combined[k] = array_right[j]
      j = j + 1
    elsif(array_left[i])
      combined[k ] = array_left[i]
      i = i + 1
    else# only array_right[j] exists
      combined[k] = array_right[j]
      j = j + 1

    end

    k = k + 1

  end

  combined

end
# array_a = [1, 3, 5, 5, 5 , 5 ]

# array_b = [2, 4 , 6]


# p merge(array_a, array_b)
# p merge(array_b, array_a)

merge_sort( [ 5, 4, 3, 1, 2, 5 ,5 ,5])

merge_sort([1])

merge_sort([2, 1])
