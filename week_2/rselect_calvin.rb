def rselect(arr, length, order_stat )
  puts "order_stat #{order_stat}"
  if(length == 1)
    p arr
    return arr[0]
  else
    rand_index = rand(0..length-1)
    pivot_index = rand_index
    puts "array is"
    p arr
    puts "pivot index is"
    p pivot_index

    puts "pivot_value is"
    p pivot_value = arr[pivot_index]


    #partition A around p
    # j = new index of p
    puts "j is"
    p j = partition_new_pivot_index(arr.dup, pivot_index)
    # if j== i return p
    if (j == order_stat )
      # puts "i j comparisson"
      # p "j is #{j} == #{order_ßstat}"
      return arr[j]
    # if j > i return rselect(firstpart A, j-1, i)
    elsif (j > order_stat)
      # puts "i j comparisson"
      # p "j is #{j} > #{order_stat}"
      return rselect(arr[0..pivot_index-1], j-1, order_stat)
    # if j < i return rselect(secondpart A, n-j, i-j)
    else # j < i
      # puts "i j comparisson"
      # p "j is #{j} < #{order_stat}"
      return rselect(arr[pivot_index+1..length-1], length-pivot_index, order_stat - j)
    end



  end

end

def partition_new_pivot_index(arr, index)
  # move the index to the first element
  if(index != 0)
    swap(arr, 0, index)
    # p arr
  end

  pivot_start = 0
  pivot_value = arr[pivot_start]
  length = arr.size()

  i = pivot_start +1
  # p i

  for j in pivot_start+1..(length-1) do
    if arr[j] < pivot_value
      # p j
      swap(arr, i , j)
      # p arr
      i = i + 1
    # puts "j is #{j}"

      # puts "i is incremented #{i}"
    end
    # puts "i is not incremented #{i}"
    # puts "j is #{j}"

  end

  # puts " i and j are"
  # p i
  # p j

  swap(arr, pivot_start, i-1)
  # puts "final swap"
  # p arr
  return i-1

end

def swap(arr,index1, index2)
  value1 = arr[index1]
  value2 = arr[index2]

  arr[index1] = value2
  arr[index2] = value1
end




arr = [9, 8, 4, 6, 7, 10]
# rselect(arr, 5, 2)

# puts "swap swapped index 0 and 1"
# p swap(arr, 0, 1)
# puts "array "
# p arr

puts "should be 6"
p rselect(arr, 5, 4)

# partition(arr, 1)

# puts "partition around 8"
# p arr
# partition(arr, 1)


