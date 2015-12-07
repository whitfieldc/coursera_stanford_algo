input_array = [1, 6, 9, 4, 3, 5, 8]
input_array2 = [1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239]
input_array3 = []
input_array4 = [1]



def merge_sort(array)
  len = array.length
  if len < 2
    return array
  else
    left = merge_sort(array[0..((len/2) - 1)])
    right = merge_sort(array[(len/2)..-1])
    stitch_sorted(left, right)
  end
end

def stitch_sorted(first, second)
  stitched = []
  total_length = first.length + second.length
  while stitched.length < total_length
    if first[0] && second[0]
      first[0] < second[0] ? stitched << (first.shift) : stitched << (second.shift)
    elsif first[0]
      stitched += first
    elsif second[0]
      stitched += second
    end
  end
  stitched
end

p merge_sort(input_array)
p merge_sort(input_array2)
p merge_sort(input_array3)
p merge_sort(input_array4)