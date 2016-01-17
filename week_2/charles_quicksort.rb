def swap(array, index1, index2)
  value1 = array[index1]
  value2 = array[index2]
  array[index1] = value2
  array[index2] = value1
end
input_array = [3, 1, 4, 5, 7, 2, 8, 6]

def quicksort(master_array, left=0, right=-1)
  # p master_array[left..right]
  sub_array = master_array
  sub_array_length = master_array[left..right].length
  middle_index = (sub_array_length/2)-1

  return if sub_array_length < 2

  pivot = sub_array[middle_index]

  swap(master_array, left, middle_index)
  p master_array
  p pivot

  # p sub_array

  partition_point = (left + 1)
  current = partition_point
  p current

  master_array[partition_point..right].each do |number|
    if number < pivot
      p "swapping #{number} and #{master_array[partition_point]}"
      swap(master_array, partition_point, current)
      partition_point += 1
    end
      p master_array
    current += 1
  end
  p master_array

  swap(master_array, left, partition_point-1)

  master_array

end

p quicksort(input_array) == [2, 1, 4, 3, 5, 7, 8, 6]


