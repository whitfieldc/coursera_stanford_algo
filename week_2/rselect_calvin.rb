def rselect(arr, length, order_stat )

  if(length == 1)
    puts "The answer:"
    return arr[0]
  else
    rand_index = rand(length)
    pivot_index = rand_index

    pivot_value = arr[pivot_index]



    j = partition_new_pivot_index(arr, pivot_index)
    # puts "j is #{j}"
    # p j
    # if j== i return p
    if (j == order_stat )
      puts "The answer:"
      return pivot_value
    # if j > i return rselect(firstpart A, j-1, i)
    elsif (j > order_stat)
      new_array_left = arr[0..(j-1)]
      p new_array_left
      return rselect(arr[0..(j-1)], j, order_stat)
    # if j < i return rselect(secondpart A, n-j, i-j)
    else # j < i
      new_array_right = arr[(j+1)..(length)]
      p new_array_right
      return rselect(arr[(j+1)..(length)], length-j-1, order_stat - j-1)
    end



  end

end

def partition_new_pivot_index(arr, index)
  # move the index to the first element
  if(index != 0)
    swap(arr, 0, index)
  end

  pivot_start = 0
  pivot_value = arr[pivot_start]
  length = arr.size()

  i = pivot_start +1

  for j in pivot_start+1..(length-1) do
    if arr[j] < pivot_value
      swap(arr, i , j)
      i = i + 1
    end

  end

  swap(arr, pivot_start, i-1)
  # puts "final swap"
  return i-1

end

def swap(arr,index1, index2)
  value1 = arr[index1]
  value2 = arr[index2]

  arr[index1] = value2
  arr[index2] = value1
end




arr = [1, 5, 3, 4, 2, 100, 7, 8, 9]
p rselect(arr, 9, 3)

