# input_array = [1, 6, 9, 4, 3, 5, 8]
# input_array2 = [1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239]
# input_array3 = []
# input_array4 = [1]

input_array = [1, 3, 5, 2, 4, 6]



def count_inversions(array)
  len = array.length
  if len < 2
    return [array, 0]
  else
    left = count_inversions(array[0..((len/2) - 1)])
    right = count_inversions(array[(len/2)..-1])
    merge_and_count_split_inv(left, right)
  end
end

def merge_and_count_split_inv(first_array_and_count, second_array_and_count)
  first = first_array_and_count[0]
  second = second_array_and_count[0]
  stitched = []
  split_invs = first_array_and_count[1] + second_array_and_count[1]

  total_length = first.length + second.length
  while stitched.length < total_length
    if first[0] && second[0]
      if first[0] < second[0]
        stitched << (first.shift)
      else
        stitched << (second.shift)
        split_invs += first.length
      end



      # first[0] < second[0] ? stitched << (first.shift) : stitched << (second.shift)


    elsif first[0]
      stitched += first
    elsif second[0]
      stitched += second
    end
  end
  [stitched, split_invs]
end

p count_inversions(input_array)
# p count_inversions(input_array2)
# p count_inversions(input_array3)
# p count_inversions(input_array4)