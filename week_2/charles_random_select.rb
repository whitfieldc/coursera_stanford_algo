def swap(array, index1, index2)
  value1 = array[index1]
  value2 = array[index2]
  array[index1] = value2
  array[index2] = value1
end

def random_select(array, target_order_statistic)
  return array[0] if array.length == 1
  pivot_index = rand(array.length-1)
  pivot = array[pivot_index]

  swap(array, 0, pivot_index)

  partition_point = 1
  current = partition_point

  array[1..-1].each do |number|
    if number < pivot
      swap(array, partition_point, current)
      partition_point += 1
    end
    current += 1
  end

  swap(array, 0, partition_point - 1)

  pivot_order_statistic = partition_point - 1

  if pivot_order_statistic == target_order_statistic
    return pivot
  elsif pivot_order_statistic > target_order_statistic
    left_side = array[0..(partition_point-2)]
    return random_select(left_side, target_order_statistic)
  else
    right_side = array[partition_point..-1]
    new_target = target_order_statistic - partition_point
    return random_select(right_side, new_target)
  end

end

input_array = [3, 1, 4, 5, 7, 2, 8, 6]
input_array4 = [9, 9, 8, 3]

p random_select(input_array, 7) == 8
p random_select(input_array, 1) == 2
p random_select(input_array, 4) == 5
p random_select(input_array4, 1) == 8