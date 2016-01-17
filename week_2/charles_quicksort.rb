def swap(array, index1, index2)
  value1 = array[index1]
  value2 = array[index2]
  array[index1] = value2
  array[index2] = value1
end

input_array = [3, 1, 4, 5, 7, 2, 8, 6]
input_array2 = [9, 8, 7, 6, 5, 4, 3, 2, 1]
input_array3 = [9, 8, 7, 6, 5, 4, 3, 2, 1, 10, 12, 11, 41]
input_array4 = [9, 9, 8, 3]

def quicksort(master_array, left=0, right=nil)
  if !right
    right = master_array.length-1
  end
  sub_array_length = master_array[left..right].length
  middle_index = left + (sub_array_length/2)

  return if sub_array_length < 2

  pivot = master_array[middle_index]

  swap(master_array, left, middle_index)


  partition_point = (left + 1)
  current = partition_point

  master_array[partition_point..right].each do |number|
    if number < pivot

      swap(master_array, partition_point, current)
      partition_point += 1
    end

    current += 1
  end

  swap(master_array, left, partition_point-1)

  quicksort(master_array, left, (partition_point-2))
  quicksort(master_array, partition_point, right)

  master_array

end

p quicksort(input_array) == input_array.sort!
p quicksort(input_array2) == input_array2.sort!
p quicksort(input_array3) == input_array3.sort!
p quicksort(input_array4) == input_array4.sort!


