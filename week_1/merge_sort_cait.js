input_array = [1, 6, 9, 4, 3, 5, 8]
input_array2 = [1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239]
input_array3 = []
input_array4 = [1]




function splitSort(array) {
  var total_length = array.length
  console.log(total_length)
  if (total_length < 2) {
    return array
  } else {
    // split and recurse, then merge
    var midpoint = total_length / 2
    var left = splitSort(0, midpoint)
    var right = splitSort(midpoint, total_length)
    return merge(array, left, right)
  }
}

function merge(array, left, right) {
  var merged = []
  var i = 0
  var j = 0
  while (merged.length < array.length) {
    switch (left[i] < right[j]) {
      case true:
        merged.push(left[i])
        i++
        break;
      case false:
        merged.push(right[j])
        j++
        break;
    }
  }
  return merged
}

splitSort(input_array)
// splitSort(input_array2)
// splitSort(input_array3)
// splitSort(input_array4)



